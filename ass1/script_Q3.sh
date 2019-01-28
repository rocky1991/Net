
sudo echo "" >iperf3_results.txt

sudo tc qdisc del dev eno1 root
echo "################### No bandwidth setting ###############" >> iperf3_results.txt
iperf3 -c 18.237.114.0 >> iperf3_results.txt
sudo tc qdisc add dev eno1 root tbf rate 1mbit burst 32kbit limit 10000

echo "################### Set bandwidth to be 1M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 1mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt
echo "################### Set bandwidth to be 2M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 2mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt
echo "################### Set bandwidth to be 3M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 3mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt
echo "################### Set bandwidth to be 4M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 4mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt
echo "################### Set bandwidth to be 5M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 5mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt
echo "################### Set bandwidth to be 6M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 6mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 7M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 7mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 8M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 8mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 9M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 9mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 10M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 10mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 11M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 11mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 12M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 12mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 13M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 13mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 14M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 14mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 15M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 15mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt


echo "################### Set bandwidth to be 16M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 16mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 17M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 17mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 18M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 18mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt

echo "################### Set bandwidth to be 19M ###############" >> iperf3_results.txt
sudo tc qdisc change dev eno1 root tbf rate 19mbit burst 32kbit limit 10000
iperf3 -c 18.237.114.0 >> iperf3_results.txt



