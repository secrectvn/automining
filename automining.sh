#!/bin/bash
####################################################
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
####################################################

echo -e  "$grn ######################################################### $end"
echo -e  "$grn #       Auto mining install script by SecrectVN         # $end"
echo -e  "$grn #        https://github.com/secrectvn/automining        # $end"
echo -e  "$grn ######################################################### $end"
# Menu
echo -e "$grn Please pick coin you want  mining  :$end"

select coin in intense fonero aeon sumokoin karbo monero
do
        case $coin in 
        intense|fonero|aeon|sumokoin|karbo|monero)   
                break
                ;;
        *)
                echo "Invalid Coin" 
                ;;
        esac
done


echo -e "$grn Now pick port you want mining :$end"
echo -e "$red You should check the port list at the website before making a selection$end $blu https://www.hashvault.pro $end"

select port in  80 443 3334 3333 9000 7777 5555	8080 8888

do
        case $port in
        80|443|3334|3333|9000|7777|5555|8080|8888)
                break
                ;;
        *)
                echo "Invalid port"
                ;;
        esac
done

echo -e  "$grn Input wallet address : $end"
read wallet
###########################
#SCRIPT AUTO INSTALL MINING
#!/bin/bash
cd && sudo apt update && apt upgrade -y ;
sudo apt-get install software-properties-common ;  	
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev htop screen -y ;
sudo git clone https://github.com/xmrig/xmrig.git mining && mkdir -p ~/mining/build && cd ~/mining/build && cmake .. && make ;
cd ~/mining/build/ && mv xmrig /root/ && cd /root ; 
screen ./xmrig -o  pool.$coin.hashvault.pro:$port -u $wallet -p $(hostname) -k --max-cpu-usage=95 --donate-level=1 ;
