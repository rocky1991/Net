sudo tc qdisc del dev eno1 root

sudo tc qdisc add dev eno1 root handle 1:0 netem delay 100ms loss 1%
sudo tc qdisc add dev eno1 parent 1:1 handle 10 tbf rate 10mbit burst 32kbit limit 10000

sudo tc qdisc change dev eno1 parent 1:1 handle 10 tbf rate 2mbit burst 32kbit limit 10000



sudo tc qdisc change dev eno1 root handle 1:0 tbf rate 50mbit burst 32kbit limit 10000



sudo tc qdisc add dev eno1 root handle 1:0 tbf rate 10mbit burst 32kbit limit 10000
sudo tc qdisc add dev eno1 parent 1:1 handle 10 netem delay 100ms