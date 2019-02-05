import boto3


# def queue_gen(resource,q_name):
# 	# resource = boto3.resource(resource)
# 	queue = resource.create_queue(QueueName=q_name)
# 	print(queue.url)

# # queue_gen('sqs','request')
# def get_queue(resource,q_name):
# 	# resource = boto3.resource(resource)
# 	queue = resource.get_queue_by_name(QueueName=q_name)
# 	print(queue.url)
# 	return queue
# def print_queues(resource):
# 	# resource = boto3.resource(resource)
# 	for queue in resource.queues.all():
# 		print(queue.url)

# def send_msg(resource,q_name,msg):
# 	# resource = boto3.resource(resource)
# 	queue = get_queue(resource,q_name)
# 	response = queue.send_message(MessageBody=msg)

# def msg_proc(resource,q_name):
# 	queue = get_queue(resource,q_name)
# 	# for message in queue.receive_messages():
# 	# 	print(message.body)
# 	print(queue.receive_messages()[0].body)
# 	# print(queue.receive_messages())

# sqs = boto3.resource('sqs')
# send_msg(sqs,'request','helloworld')
# msg_proc(sqs,'request')

# get_queue(sqs,'request')
# print_queues(sqs)

