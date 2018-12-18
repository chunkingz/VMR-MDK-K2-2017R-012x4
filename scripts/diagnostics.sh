#!/usr/bin/env bash

clear
declare -r HEADER_SIZE="####"

# VMR Diagnostic script
# added by chunkingz

# Disclaimer: this diagnostic script was gotten from fluxion
# this script is mainly used to check if your wireless card is injectable
# some unnecessary parts have been removed.

# Usage ./diagnostics.sh [wireless_interface]

# check to see if the lib folder is available which contains helper files
if [ -d "lib" ];then
	source lib/InterfaceUtils.sh
    	source lib/ChipsetUtils.sh
	source lib/ColorUtils.sh
else
  echo -e "\e[1;31mError lib folder not found, Exiting...\e[0m"
  exit 1
fi

if [ ! "$1" ]; then
  echo -e $CSYel" Usage ./diagnostics.sh [wireless_interface]" $CClr
  exit 1
fi

echo -e "$HEADER_SIZE" $CSYel "VMR DIAGNOSTICS TOOL" $CClr

echo -ne "\n\n"

echo -e "$HEADER_SIZE" $CGrn "BASH Info" $CClr
bash --version
echo "**Path:** $(ls -L $(which bash))"
echo -ne "\n\n"

echo -e "$HEADER_SIZE" $CBlu "Interface ($1) Info" $CClr
if interface_physical "$1";then
	echo "**Device**: $InterfacePhysical"
else
	echo "**Device:** Unknown"
fi

if interface_driver "$1";then
	echo "**Driver:** $InterfaceDriver"
else
	echo "**Driver:** Unsupported"
fi

if interface_chipset "$1";then
	echo "**Chipset:** $InterfaceChipset"
else
	echo "**Chipset:** Unknown"
fi

if iw list | grep monitor | head -n 1 | tail -n 1 &>/dev/null;then
	echo "**Master Modes** Yes"
else
	echo "**Master Modes** No"
fi

echo -n "**Injection Test:** "
aireplay-ng --test "$1" | grep -oE "Injection is working!|No Answer..." || echo -e "\033[31mFailed\033[0m"; exit
echo -ne "\n\n"

echo -e "$HEADER_SIZE" $CPrp "testing for x-terminal, wait for the x-term window to pop up..."$CClr
echo -ne "\n\n"
sleep 1

echo -e "$HEADER_SIZE" $CCyn "XTerm Infos"$CClr
echo "**Version:** $(xterm -version)"
echo "**Path:** $(ls -L $(which xterm))"
echo -n "Test: "
if xterm -hold -fg "#FFFFFF" -bg "#000000" -title "XServer/XTerm Test" -e "echo \"XServer/XTerm test: close window to continue...\"" &>/dev/null; then echo "XServer/XTerm success!"
else
	echo -e $CRed "XServer/XTerm failure!" $CClr
fi
echo -ne "\n\n"

echo -e "$HEADER_SIZE" $CGrn "Aircrack-ng Info" $CClr
aircrack-ng -H | head -n 4
echo -ne "\n"


# System info
echo -e "$HEADER_SIZE" $CBlu "System Info" $CClr
if [ -r "/proc/version" ]; then
	echo "**Chipset:** $(cat /proc/version)"
else
	echo "**Chipset:** $(uname -r)"
fi

echo -ne "\n"
echo -e "$HEADER_SIZE" $CCyn "Chipset" $CClr
chipset=$(airmon-ng | grep $1 | awk '{print $3}')
echo "Chipset: $chipset"
echo -ne "\n"
