sudo tc qdisc del dev eth0 root
sudo tc qdisc add dev eth0 root handle 1: netem delay 30ms loss 0%
sudo tc qdisc add dev eth0 parent 1:1 handle 10: tbf rate 10000kbit latency 30ms burst 32kbit


sudo tc qdisc del dev eth0 root