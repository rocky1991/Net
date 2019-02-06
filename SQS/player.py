#!/usr/bin/env python3

import boto3

QUEUE_URL = "https://sqs.us-east-1.amazonaws.com/519894690248/grenade-game"
WELCOME = \
"""
Greetings Player: {}. You have entered the grenade game. Try not to explode!
"""

DECISION = \
"""
What do you want to do?
---
1 -- Throw grenade left
2 -- Throw grenade right
h -- Move left
l -- Move right
x -- Quit
"""
OPTIONS = {"1", "2", "h", "l", "x"}


def send_msg(queue, body):
    return queue.send_message(
        MessageBody=body,
        DelaySeconds=5
    )


def player(queue, player):
    print(WELCOME.format(player))

    while True:
        print(DECISION)
        d = input()
        if d == "x":
            body = 'Player {} quit the game'.format(player)
            _ = send_msg(queue, body)
        elif d in {"1", "2"}:
            direction = "left" if d == "1" else "2"
            body = 'Grenade thrown from player {} with direction {}'.format(player, direction)
            _ = send_msg(queue, body)
        elif d in {"h", "l"}:
            direction = "left" if d == "h" else "right"
            body = 'Player {} moved {}'.format(player, direction)
            _ = send_msg(queue, body)
        else:
            print("{} isn't an option. Pay attention".format(d))

    print("Thanks for playing...")


def main():
    sqs = boto3.resource('sqs')
    queue = sqs.Queue(QUEUE_URL)
    player(queue, "1")


if __name__=="__main__":
    main()
