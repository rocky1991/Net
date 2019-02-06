import argparse

import boto3

MESSAGE = \
"""
####################################
# What would you like to do?       #
# -------------------------------- #
# p -- Poll messages in the queue  #
# x -- exit                        #
####################################
"""

WELCOME = \
"""------------------------------------------------------------------------
This is a mock consumer. 

It's pretty dumb, because it can't delete messages, but it's useful for 
demonstration purposes.
------------------------------------------------------------------------
"""

RECEIVE = \
"""Recieved {} messages:
---"""

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-q", "--queue", help="queue url",
                        default="https://sqs.us-east-1.amazonaws.com/519894690248/grenade-queue")
    args = parser.parse_args()

    sqs = boto3.resource('sqs')
    queue = sqs.Queue(args.queue)
    print(WELCOME)

    while True:
        print(MESSAGE)
        d = input("> ")
        if d == "p":
            messages = queue.receive_messages(AttributeNames=['All'],
                                              MaxNumberOfMessages=10)
            print(RECEIVE.format(len(messages)))
            for m in messages:
                print(m.body)
            print("---")
        elif d == "x":
            break
        else:
            print("{} is not an option. Pay attention you 💩".format(d))
    print("Happy consuming...👋")


if __name__=="__main__":
    main()
