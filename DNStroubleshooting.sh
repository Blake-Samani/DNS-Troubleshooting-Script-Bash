#!/bin/sh
#This program will help troubleshoot DNS issues by providing user with
#DNS information as an output file
#Blake Samani
#Secure Systems 2021
#To use this code, simply type sh DNStroubleshooting.sh (insertipaddressordomainnamehere)
#The output will be a file in the location you ran the program from called DNSinfo.txt
#If you want to change the format, simply edit the end of the DNSinfo.txt appends

if [ $1 ]; 
then 
	ping -c 1 $1 >> DNSinfo.txt  # if user enters command lind argument then ping that IP
	echo "----------------------------------------------------------- " >> DNSinfo.txt
	echo "----------------------------------------------------------- " >> DNSinfo.txt
	echo "NSlookup results for ${1}" >> DNSinfo.txt
	nslookup $1 >> DNSinfo.txt
	echo "----------------------------------------------------------- " >> DNSinfo.txt
	echo "----------------------------------------------------------- " >> DNSinfo.txt
	dig $1 >> DNSinfo.txt;
	echo "----------------------------------------------------------- " >> DNSinfo.txt
        echo "----------------------------------------------------------- " >> DNSinfo.txt
else 
	echo "No IP address/domain name given" 
	exit 1;
fi 



