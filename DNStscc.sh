#!/bin/sh
#This program will help troubleshoot DNS issues by providing user with
#DNS information as output to the console
#Blake Samani
#Secure Systems 2021
#To use this code, simply type sh DNStscc.sh (insertipaddressordomainnamehere)



#Note: tput setaf 1 sets color of output to red and tput setaf 3 sets output of color to yellow.

if [ $1 ]; 
then 
        tput setaf 3; ping -c 1 $1  # if user enters command lind argument then ping that IP
	echo "$(tput setaf 1)----------------------------------------------------------- "
        echo "----------------------------------------------------------- "
        tput setaf 3; echo "NSlookup results for ${1}" 
        tput steaf 3; nslookup $1
        tput setaf 1;echo "----------------------------------------------------------- " 
        echo "----------------------------------------------------------- "
        tput setaf 3;dig $1 
        tput setaf 1;echo "----------------------------------------------------------- "
        echo "----------------------------------------------------------- " 
else 
        echo "No IP address/domain name given" 
        exit 1;
fi 


