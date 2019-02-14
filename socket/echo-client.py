import socket 

HOST = '10.191.255.130'
PORT = 65432

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
	s.connect((HOST,PORT))
	while True:
		in1 = input("Enter input> ")
		if(in1 == 'q'):
			break
		s.sendall((in1).encode())
	data = s.recv(1024)

print('Received', repr(data))