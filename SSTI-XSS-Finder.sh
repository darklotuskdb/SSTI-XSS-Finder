#!/bin/bash

DORK=$1

w_tech="AngularJS"

if [ -z "$1" ]
	then 
		echo "Usage: ./SSTI-XSS-Finder.sh <Shodan-Dork>  like  org:target | hostname:target.com | net:127.0.0.1"
		echo "[-] Exiting...."
else 
	for TECH in $w_tech;
		do
			a=$(shodan search --limit 1000 --fields ip_str,port,hostnames,org http.component:${TECH} $DORK)
			echo -e "\n\e[1;33m[+]Sub-Domains Using AngularJS Technology Are:\e[0m"
			echo "$a"

			
			b=$( echo "$a" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}")
			
			for tar in $b; 
				do 
					echo -e "\n\n\e[1;34m[*]$tar\e[0m => \e[1;31mAngularJS $(wappalyzer https://$tar -P -w 7000| sed -n -e '/angularjs/,/website/ p' | grep version | tr -d '"version": ",' | tee v.txt) \e[0m $(if [[ -s v.txt ]]; then echo "\n\e[1;33m[+]XSS Payloads\n\e[0m $(g=$(cat v.txt | awk '{ print substr( $0, 1, length($0)-2 ) }' | sed 's/\./\\./g') && grep "$g" Payloads.txt)"; else echo -e "\n[~] Help: https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/XSS%20Injection/XSS%20in%20Angular.md"; fi)";	
				done
			
			rm v.txt
echo -e "\n\e[92mFollow Me On\e[0m" "\e[34mTwitter\e[0m" "\e[5m\e[93m@darklotuskdb\e[0m" "\e[92mHappy Hacking\e[0m"
echo -e "\n\e[1mGood Day\e[0m\n"		  
		done
fi | tee output.txt
