#!/bin/bash
if [ "$1" == "" ]
then
	echo "$===NaborZin Interactive===$"
	echo "Como usar: $0 www.site.com"
else
echo "COLETANDO INFORMAÇÕES"
echo ""
wget $1
echo ""
echo "OK... AGUARDE..."
echo ""
grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > lista
for url in $(cat lista);do host $url | grep "has address";done
echo ""
rm index.html lista
echo "LIMPANDO LOGS"
fi
