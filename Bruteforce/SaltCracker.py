#!/usr/bin/python

import crypt
import sys
import threading
import subprocess

def usage():
	print "Usage()................"
	print "python SaltCracker.py  [wordlist path]     "
	print "				              "
	print "Then you'll be prompted for HASH and SALT"
	print "[!]This script is ONLY for hashes using SALT"
	sys.exit()

def main():
	if not len(sys.argv[1:]):
		usage()
	else:
		quebra()
	sys.exit()

def quebra():
	hash=raw_input("Digite o Hash completo\n")
	salt=raw_input("Digite o salt\n")
	file=open(sys.argv[1],'r')
	wordlist = file.read().split('\n')
	for line in wordlist:
		crack=crypt.crypt(line, salt)
		if (crack == hash):
			print "[*]Password Found: "+line
			break
		else:
			print "[-]Trying.....",line
	file.close()
	sys.exit()

main()
