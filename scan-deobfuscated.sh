#Deobfuscated By xNot_Found
#Github : https://github.com/hatakecnk
clear
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[1;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
echo -e $white"================================"
echo -e $white"= AUTHOR :$green JUNIOR404           $white="
echo -e $white"= TEAM   :$red 407 AEX             $white="
echo -e $white"= Create :$yellow Kam, 13 jun 2019    $white="
echo -e $white"================================"
echo -e $white"DAFTAR MENU PILIHAN"
echo -e $red"[$white 1$red ]$white Cek IP Kamu"
echo -e $red"[$white 2$red ]$white HOST Scanner"
echo -e $red"[$white 3$red ]$white HOST DNS Scanner"
echo -e $red"[$white 4$red ]$white PORT Scanner"
echo -e $red"[$white 5$red ]$white Keluar"
read -p "Masukan Nomer : " jun
if [ $jun = 1 ]
then
ip=$(curl -s https://api.ipify.org)
echo "IP Address Kamu: $ip"
echo -e $yellow
read -p "Tekan Enter Untuk Kembali" enter
bash scan.sh
fi
if [ $jun = 2 ]
then
echo
read -p "Masukan Site: " host
host=$(curl -s http://api.hackertarget.com/hostsearch/?q=$host)
echo "Daftar Host: $host"
echo
echo -e $yellow
read -p "Tekan Enter Untuk Kembali" enter
bash scan.sh
fi
if [ $jun = 3 ]
then
echo
read -p "Masukan Site: " dns
curl https://api.hackertarget.com/mtr/?q=$dns
echo
echo -e $yellow
read -p "Tekan Enter Untuk Kembali" enter
bash scan.sh
fi
if [ $jun = 4 ]
then
echo
read -p "Masukan Site Atau IP: " port
curl http://api.hackertarget.com/nmap/?q=$port
echo
echo -e $yellow
read -p "Tekan Enter Untuk Kembali" enter
bash scan.sh
fi
if [ $jun = 5 ]
then
clear
echo -e $yellow"Subscribe GUNAWAN ID"
echo -e $yellow"BY BY..."
exit
else
bash scan.sh
fi
