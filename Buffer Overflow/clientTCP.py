import socket

thost = raw_input("Type the URL: ")
tport = input ("And the Port: ")

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((thost,tport))
client.send("GET / HTTP/1.1\r\n\r\n")
response = client.recv(1024)

print response