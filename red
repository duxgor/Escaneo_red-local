#! /bin/bash/
############  Colores  #################
#   apt-get install nmap 

rojx='\e[101m'
rojs='\e[41m'
roj='\033[31m'
ro2='\033[91m'

ver='\033[32m'
ver0='\033[1;32m'
ve2='\033[92m'
ve20='\033[1;32m'

ama='\033[33m'
am0='\033[1;33m'

azu='\033[34m'
az0='\033[1;34m'

pur='\033[35m'

cy='\033[36m'
cy0='\033[1;36m'
##---------------
sub='\e[4m'
fos='\e[5m'

fin='\e[0m'
########     Fin Colores ##############----
echo ""
az='\033[00;34m'
rou="$(ip route show|grep ' dhcp '|cut -d' ' -f3)"

echo ""
echo ""
########################### ip/red ####################
ipp="$(curl ifconfig.co)"
ip="$(ip route show|grep ' src ' |cut -d' ' -f9)"
ant3=`netstat -r | grep "default" | awk {'print $8'}`
nomred="$(nmcli c|sed -n '2p'|cut -d' ' -f1)"
#ipx=$(hostname -I)
rou="$(ip route show|grep ' dhcp '|cut -d' ' -f3)"
#####################################

#ip="$(ip route show|grep ' src ' |cut -d' ' -f9)"
c0mp=$(touch te && whois $ipp|sed -n '19p'|cut -d' ' -f8-14 > te && cat te && rm -f te) > /dev/null 2>&1


clear
echo "$azu
▒█▀▀▀ █▀▀ █▀▀ █▀▀█ █▀▀▄ █▀▀ █▀▀█ █▀▀▄ █▀▀▄ █▀▀█ 　 　 
▒█▀▀▀ ▀▀█ █░░ █▄▄█ █░░█ █▀▀ █▄▄█ █░░█ █░░█ █░░█ 　 　 
▒█▄▄▄ ▀▀▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀░ ▀▀▀▀ 　 　 

$ama▒█▀▀█ █▀▀ █▀▀▄ 
$ama▒█▄▄▀ █▀▀ █░░█ $cy   ...ł₱ ĐɆ ⱤØɄ₮ɆⱤ...         $fin  
$ama▒█░▒█ ▀▀▀ ▀▀▀░ $fin       $rou 
                ├─────$roj $nomred $fin─────┤
                $fin $c0mp"
echo "$fin


"
echo  "$roj:::::::::::$ama$subＧｅｎｅｒａｎｄｏ　Ｌｉｓｔａ$fin$roj　ｄｅ　
Ｕｓｕａｒｉｏｓ　Ｃｏｎｅｃｔａｄｏｓ　
ａ$ama　Ｒｅｄ_Ｌｏｃａｌ$roj::::::::::::::::::::::::::  \e[0m"
echo    "  $cy                                               "
echo "  ──────────────────────────────────────────────────────────────────┤$fin"
nmap -sP $rou/24
echo " $cy ──────────────────────────────────────────────────────────────────┤$fin"
echo "
"
echo  "\e[1;33m  :::ㄒㄩ::: $fin
      │
      │
      ├────────┤\e[1;33mł₱ ₱ⱤłV₳Đ₳ $fin[\e[34m$ip\e[0m]   
      │
      │
      └─────────────┤\e[1;33mł₱ ₱Ʉ฿Ⱡł₵₳ $fin[\e[34m$ipp\e[0m] 
           \e[0m"







