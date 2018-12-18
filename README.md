# :fire: VMR-MDK-K2-2017R-012x4
VMR-MDK is a script for cracking wps wireless networks

**Mainly used for WPS locked routers**

:raised_hands: S/O to musket teams for this tool, this tool is for educational purposes only.
Please do not use this tool for evil purposes.
i will not be held responsible for any harm done to your network or router via this tool.

*This tool is made to attempt to get a routers wps pin if wps is enabled on the router and if the router uses wps locking or wps is locked and no longer crackable by bully or Reaver, you'll be better off using this tool.*

*if you're lucky and the router uses a default wps pin like 01234567 or 00000000 you're in luck it will take couple of seconds, else it may take some time so just be patient... :relaxed: *

*watch my youtube clip on using the tool here, titled:How to hack WPS locked routers using vmr-mdk with Kali Linux*

`**https://www.youtube.com/watch?v=y3ByYdVJFqg**`


`Read the "Help Files VMR-MDK-K2-2017R-012x4.txt" file to get a brief on the script what it does and how it works.`

`Read the "configfiledetailed" file to learn more about the config and tweaking the way the script works.`

# INSTALLATION
Open your terminal and run this command

`git clone https://github.com/chunkingz/VMR-MDK-K2-2016R-011x9.git`     

Enter the directory
	
`cd VMR-MDK-K2-2016R-011x9`
	
Set your permissions

`chmod +x VMR-MDK-K2-2017R-012x4.sh`  [Enter]
	
copy the three varmac folders to root [VARMAC_CONFIG, VARMAC_LOGS, VARMAC_WASH]
	
`cp -r VARMAC_* /root/`

:exclamation: WARNING Before running manually remove any wifi virtual monitor ie wlan0mon0 etc made by the newer airmon-ng

Run by the script 
	
`./VMR-MDK-K2-2017R-012x4.sh`  [Enter]

[optional steps]
	
Or place in the user/sbin folder, if you want to be able to call it from anywhere

`chmod +x /user/bin/VMR-MDK-K2-2017R-012x4.sh`  [Enter]

`VMR-MDK-K2-2017R-012x4.sh`   [Enter]

     	

## :rocket: Extra Modifications
I have added a diagnostics tool to it to check if your wireless card is injectable and some extras, all you need to do is, cd into the scripts directory and run it

`cd scripts`   <= [enter the scripts dir]

`./diagnostics.sh wlan0`    <= [run the diagnostics script]

where wlan0 is whatever your wireless interface is called, you can check this by running

`airmon-ng`     <= [shows you your wireless interface, if any]


################################
## :boom: MAIN ADDITIONS:

1. I modified the script to properly kill processes and restart network services on ctrl+C
2. added a test for card injection using aireplay
3. properly save the reaver version to a file in the temp dir and output it.
4. added a diagnostics script in the scripts dir, for testing if your card can inject packets using aireplay, if aircrack is installed, what version of linux you have installed, if you have bash installed, if you have xterm installed, etc...

### check out the chunkingz_help_file.txt for more

Done with lots of :heart: :bowtie: 
