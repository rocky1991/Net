import boto3

def check_queue():
	sqs = boto3.resource('sqs')
	request_flag = 0
	response_flag = 0
	# response = q_type.list_queues()
	for queue in sqs.queues.all():
		q_name = queue.attributes['QueueArn'].split(':')[-1]
		if(q_name=='request'):
			print('Queue "request" already existed, clear out messages')
			for message in queue.receive_messages():
				message.delete()
			request_flag = 1
			continue
		elif(q_name=='response'):
			print('Queue "response" already existed, no actions taken')
			for message in queue.receive_messages():
				message.delete()
			response_flag = 1
			continue
	if(request_flag==0):
		print('request queue does not exist yet, create request queue')
		sqs.create_queue(QueueName='resquest')
	if(response_flag==0):
		print('response queue does not exist yet, response queue')
		sqs.create_queue(QueueName='response')

	# return request_flag,response_flag





# def main():
# 	sqs = boto3.resource('sqs')
# 	request_queue = sqs.get_queue_by_name(QueueName='request')
# 	response_queue = sqs.get_queue_by_name(QueueName='response')
# 	while True:
# 		start_server = input("Start Server? (y/n)")
# 		if(start_server=='y'):
# 			# while True:
# 			pass
# 		else:
# 			break

# if __name__=='__main__':
# 	main()
