#!/usr/bin/env python3

import boto3

QUEUE_URL = "https://sqs.us-east-1.amazonaws.com/519894690248/grenade-game"

MESSAGE = \
"""
What would you like to do?
---
1 -- Poll messages in the queue
x -- exit
"""


def main():
    sqs = boto3.resource('sqs')
    queue = sqs.Queue(QUEUE_URL)
    print("Welcome to the Queue. We receive messages from our")
    while True:
        print(MESSAGE)
        d = input()
        if d == "1":
            messages = queue.receive_messages(
                AttributeNames=['All'],
                MaxNumberOfMessages=10
            )
            print("Messages:")
            for m in messages:
                print(m.body)
        elif d == "x":
            break
        else:
            print("{} is not an option. Pay attention".format(d))
    print("Thanks for playing")


if __name__=="__main__":
    main()
