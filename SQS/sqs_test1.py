import boto3


sqs = boto3.resource('sqs')

queue = sqs.create_queue(QueueName='test',Attributes={'DelaySeconds':'5'})
# queue = sqs.get_queue_by_name(QueueName='queue1')
print(queue.url)
print(queue.attributes.get('DelaySeconds'))

queue1 = sqs.get_queue_by_name(QueueName='test')
print(queue1.url)
print(queue1.attributes.get('DelaySeconds'))

for queue in sqs.queues.all():
	print(queue1.url)

response = queue1.send_message(MessageBody='world')
print(response.get('MessageId'))
print(response.get('MD5OfMessageBody'))

response1 = queue1.send_message(MessageBody='boto3',MessageAttributes={
	'Author':{
		'StringValue':'Daniel',
		'DataType': 'String'
	}
	})
print(response.get('MessageId'))
print(response.get('MD5OfMessageBody'))

response2 = queue1.send_messages(Entries=[
	{	
		'Id': '1',
		'MessageBody':'world'

	},
	{
		'Id':'2',
		'MessageBody':'boto3',
		'MessageAttributes':{
			'Author':{
				'StringValue':'Daniel',
				'DataType':'String'
			}
		}
	}

	])
print(response.get('Failed'))
for message in queue1.receive_messages(MessageAttributeNames=['Author']):
	print(message)
	print('\n')
	author_text = ''
	if message.message_attributes is not None:
		author_name = message.message_attributes.get('Author').get('StringValue')
		print(1)
		print(author_name)


