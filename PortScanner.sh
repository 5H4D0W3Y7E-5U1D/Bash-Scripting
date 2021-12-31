#!/usr/bin/zsh

figlet -ctf big "WLECOME TO MY PORT SCANNER"
read "?Please Enter Your Target IP: " ip
echo "Please Wait While We Scan Ports For You"
nc -nvz $ip {1..65535}
