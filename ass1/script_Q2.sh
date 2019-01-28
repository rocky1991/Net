
sudo echo "" >ping_results.txt

sudo tc qdisc del dev eno1 root

ping -c 5 18.237.114.0 >> ping_results.txt
sudo tc qdisc add dev eno1 root netem loss 1%
echo "######Introducing 1% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 1%
ping -c 5 18.237.114.0 >> ping_results.txt
echo "######Introducing 10% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 10%
ping -c 5 18.237.114.0 >> ping_results.txt 			
echo "######Introducing 25% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 25%
ping -c 5 18.237.114.0 >> ping_results.txt
echo "######Introducing 50% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 50%
ping -c 5 18.237.114.0 >> ping_results.txt
echo "######Introducing 75% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 75%
ping -c 5 18.237.114.0 >> ping_results.txt
echo "######Introducing 90% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 90%
ping -c 5 18.237.114.0 >> ping_results.txt
echo "######Introducing 99% package loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 99%
ping -c 5 18.237.114.0 >> ping_results.txt