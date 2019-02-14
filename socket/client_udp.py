import socket

IP = "127.0.0.1"
PORT = 65432

with socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  as s:
	s.sendto(b"hello",(IP,PORT))