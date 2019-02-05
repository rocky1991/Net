import boto3

def test_client_api():
	sqs=boto3.client('sqs')
	# sqs.create_queue(QueueName='test',Attributes={'ReceiveMessageWaitTimeSeconds':'5'})
	queue = sqs.get_queue_url(QueueName='test')['QueueUrl']
	print(queue)
	print(sqs.get_queue_attributes(QueueUrl=queue))
test()