import numpy as np

def local_produce_parse():

	q3_log = []
	q5_log = []
	q10_log = []
	q3_flag = False
	q5_flag = False
	q10_flag = False
	q_num = '0'
	with open ('local_produce.log','r') as file:
		lines = file.readlines()
		for line in lines:
			if line.split(' ')[0] == 'Start':
				if(len(line.split(' '))>3):
					q_num = line.split(' ')[5]
			if line.split(' ')[0] == 'produce':
				filter1 = line.split('(')[1].split(')')
				filter2 = filter1[0].split('=')
				msg_key = filter2[1].split(' ')[0].strip()
				msg_size = filter2[-1].strip()
				time_stamp = line.split(':')[3].strip()
				if(q_num == '3'):
					q3_log.append([msg_size,msg_key,time_stamp])
				elif(q_num == '5'):
					q5_log.append([msg_size,msg_key,time_stamp])
				elif(q_num == '10'):
					q10_log.append([msg_size,msg_key,time_stamp])


	# q3_log.sort(key=lambda x: int(x[0]))
	# q5_log.sort(key=lambda x: int(x[0]))
	# q10_log.sort(key=lambda x: int(x[0]))
	# with open('q3_results.csv','w') as file:
	# 	file.write('')
	# for event in q3_log:
	# 	with open('q3_results.csv','a') as file:
	# 		file.write(event[0]+','+event[1]+','+event[2]+'\n')
	
	# with open('q5_results.csv','w') as file:
	# 	file.write('')

	# for event in q5_log:
	# 	with open('q5_results.csv','a') as file:
	# 		file.write(event[0]+','+event[1]+','+event[2]+'\n')
	# with open('q10_results.csv','w') as file:
	# 	file.write('')
	# for event in q10_log:
	# 	with open('q10_results.csv','a') as file:
	# 		file.write(event[0]+','+event[1]+','+event[2]+'\n')
# local_produce_parse()
def remote_consume_parse():
	with open ('remote_consume.log','r') as file:
		lines = file.readlines()
		event_log = []
		for line in lines:
			type = line.split(':')[0]
			index = 0

			if(type == 'Receive message'):
				filter1 = line.split('(')[1].split(')')
				filter2 = filter1[0].split('=')
				msg_key = filter2[1].split(' ')[0].strip().split("'")[1]
				msg_size = filter2[-1].strip()
				receive_at_t = line.split(':')[3].strip()
				event_log.append(['Receive',msg_size,msg_key,receive_at_t])
			elif(type == 'produce message'):
				filter1 = line.split('(')[1].split(')')
				filter2 = filter1[0].split('=')
				msg_key = filter2[1].split(' ')[0].strip().split("'")[1]
				msg_size = filter2[-1].strip()
				forward_at_t = line.split(':')[3].strip()
				event_log.append(['Forward',msg_size,msg_key,forward_at_t])
	with open('remote_consume_results.csv','w') as file:
		file.write('')
	with open('remote_consume_results.csv','a') as file:
		for event in event_log:
			file.write(event[0]+','+event[1]+','+event[2]+','+event[3]+'\n')

remote_consume_parse()