import sys
file_path = '/etc/mongod.conf'
def get_kafka_ip():
	with open('./remote_ips.txt','r') as file:
		lines = file.readlines()
	for line in lines:
		if(line.split(',')[0].strip() == 'kafka'):
			return line.split(',')[1].split('@')[1].strip()


old_string = "bindIp: 127.0.0.1"
replacement_string = "bindIp: 0.0.0.0"


with open(file_path, 'U') as file:
	line = file.read()
	if  old_string in line:
		line=line.replace(old_string,replacement_string)

with open(file_path,'w') as file:
	file.write(line)
