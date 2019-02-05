import boto3

sqs = boto3.client('sqs')

response = sqs.list_queues()
print(response['QueueUrls'])


response1 = sqs.create_queue(
	QueueName='test1',
	Attributes={
		'DelaySeconds':'60',
		'MessageRetentionPeriod': '86400'
	}
	)
print(response1['QueueUrl'])
response2 = sqs.list_queues()
print(response2['QueueUrls'])

response3 = sqs.get_queue_url(QueueName='test1')
print(response3['QueueUrl'])
# queue with the same name cant be created within 60 seconds after it was deleted.
# sqs.delete_queue(QueueUrl=response3['QueueUrl'])
print(response['QueueUrls'])