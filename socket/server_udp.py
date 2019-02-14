import socket

IP = "127.0.0.1"
PORT = 65432

with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:
	s.bind((IP,PORT))

	while True:
		data,addr = s.recvfrom(1024)
		print("Message is :" + str(data))
		print("From :" + str(addr))