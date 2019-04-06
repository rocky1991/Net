from aux_func import *
from confluent_kafka import Producer
import time

def main():
	print("Running experiment >>>>>")
	if(input("Setting up instance? y/n" > ) == 'y'):
		instance_setup()

	pre_experiment_check()

	kafka_ip = get_kafka_ip()
	p = Producer({'bootstrap.servers':'localhost:9092',
				  'message.max.bytes':'1100000'})

	write_to_file('local_produce.log','')

	while True:
		q_num = input("Enter question number 3-10> ")	
		if q_num == '3':
			for instance in get_ip():
				subprocess.run(['./run_net_setting.sh',instance.ip,instance.type,'15','10m','0.0000000001'])
			input("Please log in server(Responder) instance and start consume_msg.py,\nRun 'python3 consume_msg.py topic1 your_log_name.log True topic2 group_id'\nPress Enter to continue")
			input("Please start consume_msg at consumer(second responder), consume topic2\nRun 'python3 consume_msg.py topic2 your_log_name.log False None group id'\nPress Enter to continue")
			append_to_file('local_produce.log',"Q{} >>>>>>>>>>>>>>>>".format(q_num))
			msg_list = ['a' * 2**c for c in range(0,20)]
			
			for msg in msg_list:
				for i in range(50):
					ts = str(time.time())
					print("current message id is {} size is {}".format(ts,len(msg)))
					p.produce('topic1',key=ts,value=msg)
					p.flush()
					ts = str(time.time())
					append_to_file(logname,"Produce message:(key={} msg_size={}) to topic: {} at time: {}".format(key,len(msg),'topic1',ts))
		elif(q_num == '4'):
			pass
		elif(q_num == '5'):
			pass
		elif(q_num == '6'):
			pass
		elif(q_num == '7'):
			pass
		elif(q_num == '8'):
			pass
		elif(q_num == '9'):
			pass
		elif(q_num == '10'):
			pass

   
if __name__=='__main__':
	main()