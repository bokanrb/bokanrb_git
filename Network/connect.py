import socket
import sys

try:
	ip = raw_input("IP Address: ")
	client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	client.connect((ip,10))
	resp = client.recv(1024)
	print resp
	
	client.send("USER: teste\r\n")
	resp = client.recv(1024)
	print resp
	
	client.send("PASS: teste\r\n")
	resp = client.recv(1024)
	print resp
	
	client.send("QUIT\r\n")
	resp = client.recv(1024)
	print resp

except:
	print "Errrr to connect"