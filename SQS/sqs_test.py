import boto3


sqs = boto3.resource('sqs')

queue = sqs.create_queue(QueueName='test',Attributes={'DelaySeconds':'5'})
# queue = sqs.get_queue_by_name(QueueName='queue1')
print(queue.url)
print(queue.attributes.get('DelaySeconds'))

queue1 = sqs.get_queue_by_name(QueueName='test')
print(queue.url)
print(queue.attributes.get('DelaySeconds'))

for queue in sqs.queues.all():
	print(queue.url)

response = queue.send_message(MessageBody='world')
print(response.get('MessageId'))
print(response.get('MD5OfMessageBody'))

response1 = queue.send_message(MessageBody='boto3',MessageAttributes={
	'Author':{
		'StringValue':'Daniel',
		'DataType': 'String'
	}
	})
print(response.get('MessageId'))
print(response.get('MD5OfMessageBody'))

response2 = queue.send_messages(Entries=[
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


