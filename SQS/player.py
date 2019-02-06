import argparse

import boto3

WELCOME = \
"""Weclome to...
  ________                                 .___             
 /  _____/______   ____   ____ _____     __| _/____   ______
/   \  __\_  __ \_/ __ \ /    \\__  \   / __ |/ __ \ /  ___/
\    \_\  \  | \/\  ___/|   |  \/ __ \_/ /_/ \  ___/ \___ \ 
 \______  /__|    \___  >___|  (____  /\____ |\___  >____  >
        \/            \/     \/     \/      \/    \/     \/

You are...

💥 Player '{}' 💥
-------------------------------------------------------------
"""

DECISION = \
"""
################################
# Choose your next move:       #
# ---------------------------- #
# 1 -- 💣 Throw grenade left   #
# 2 -- 💣 Throw grenade right  #
# h -- 🏃 Move left            #
# l -- 🏃 Move right           #
# x -- 🚪Quit                  #
################################
"""

OPTIONS = {"1", "2", "h", "l", "x"}

GRENADE_THROW = \
"""...
Threw 💣 to the {} 💥💥💥
..."""

MOVEMENT = \
"""...
Moved {} 🏃🏃🏃
..."""


def send_msg(queue, body):
    return queue.send_message(
        MessageBody=body,
        DelaySeconds=5
    )


def player(queue, player):
    print(WELCOME.format(player))

    while True:
        print(DECISION)
        d = input("> ")
        if d == "x":
            body = 'Player {} quit the game'.format(player)
            _ = send_msg(queue, body)
            break
        elif d in {"1", "2"}:
            direction = "left" if d == "1" else "2"
            body = 'Grenade thrown {} from player {}'.format(direction, player)
            _ = send_msg(queue, body)
            print(GRENADE_THROW.format(direction))
        elif d in {"h", "l"}:
            direction = "left" if d == "h" else "right"
            body = 'Player {} moved {}'.format(player, direction)
            _ = send_msg(queue, body)
            print(MOVEMENT.format(direction))
        else:
            print("{} isn't an option. Pay attention you 💩".format(d))

    print("Thanks for playing, {}...👋".format(player))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-p", "--player", help="player name", default="1")
    parser.add_argument("-q", "--queue", help="queue url",
                        default="https://sqs.us-east-1.amazonaws.com/519894690248/grenade-queue")
    args = parser.parse_args()

    sqs = boto3.resource('sqs')
    queue = sqs.Queue(args.queue)
    player(queue, args.player)


if __name__=="__main__":
    main()
