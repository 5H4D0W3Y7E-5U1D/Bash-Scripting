#!/usr/bin/zsh

figlet -ctf big "WELCOME TO  MY  DNS SCANNING TOOL"
printf "\n"
read "?Please Enter Your Target DOMAIN: " domain
printf "\nPlease Wait While We ENUMERATE the Domain\n\n\n"
printf "\n\n\nENUMERATING DOMAIN and IP\n\n"
host -t A $domain | grep "has address" | cut -d " " -f1,4
printf "\n\n\nENUMERATING NAMESERVER and THEIR IPs\n\n"
host -t NS $domain | grep "name server" | cut -d " " -f4 | while read nameserver;do host -t A $nameserver|grep "has address"|cut -d " " -f1,4;done
printf "\n\n\nENUMERATING MAIL EXCHANGE SERVER and THEIR IPs\n\n"
host -t MX $domain | grep "handled by" | cut -d " " -f7 | while read handle;do host -t A $handle|grep "has address"|cut -d " " -f1,4;done
