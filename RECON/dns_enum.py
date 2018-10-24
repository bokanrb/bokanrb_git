import socket

dominio = raw_input("Digite o dominio: ")
with open("listdns.txt") as lista:
	listdns = lista.readlines()
for name in listdns:
	DNS = name.strip("\n") + dominio
	try:
		print DNS + ": " + socket.gethostbyname(DNS)
	except socket.gaierror:
		pass
