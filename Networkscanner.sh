#!/usr/bin/zsh

figlet -ctf big "WELCOME TO MY NETWORK SCANNER"
printf "\n"
read "?Please Enter The First IP Of The Range: (for Ex. 192.168.0.x) " ip
echo " "
echo "Please Wait While The Scan Is Going On"
echo " "
for i in {1..254}
do
	ping $ip$i -c 1 |grep "bytes from"|cut -d " " -f4 &
done
