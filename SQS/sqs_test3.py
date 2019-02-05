from threading import Thread
import time

def read_queue():
	with open('test.txt','r') as file:
		msg = file.read()
	print("\nMessages content: {}\n".format(msg))
def write_to_queue(msg):
	with open('test.txt','w') as file:
		file.write(msg)

def main():
	# done = False
	write_to_queue('')
	while True:
		msg = input("Enter msg > ")
		t1 = Thread(target=read_queue,args=())
		t1.start()
		
		t2 = Thread(target=write_to_queue,args =(msg,))
		
		t2.start()
		# time.sleep(1)
		if(input("Quit?(y/n)")== 'y'):
			break 
if __name__=='__main__':
	main()