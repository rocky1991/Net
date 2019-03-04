import socket
import sys

for i,arg in enumerate(sys.argv[1:]):
	if(arg == "-s"):
		IP = sys.argv[i+2]
	if(arg == "-p"):
		PORT = int(sys.argv[i+2])

with socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  as s:
	s.sendto(b"hello",(IP,PORT))