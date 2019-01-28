
sudo echo "" >ping_results.txt

sudo tc qdisc del dev eno1 root
echo "######No packet loss specified##########" >>ping_results.txt
ping -c 100 18.237.114.0 >> ping_results.txt
sudo tc qdisc add dev eno1 root netem loss 1%
echo "######Introducing 1% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 1%
ping -c 100 18.237.114.0 >> ping_results.txt
echo "######Introducing 10% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 10%
ping -c 100 18.237.114.0 >> ping_results.txt 			
echo "######Introducing 25% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 25%
ping -c 100 18.237.114.0 >> ping_results.txt
echo "######Introducing 50% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 50%
ping -c 100 18.237.114.0 >> ping_results.txt
echo "######Introducing 75% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 75%
ping -c 100 18.237.114.0 >> ping_results.txt
echo "######Introducing 90% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 90%
ping -c 100 18.237.114.0 >> ping_results.txt
echo "######Introducing 99% packet loss##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem loss 99%
ping -c 100 18.237.114.0 >> ping_results.txt