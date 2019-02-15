
sudo echo "" >ping_results.txt
sudo tc qdisc del dev eno1 root


sudo tc qdisc add dev eno1 root netem delay 100ms
echo "######Introducing 0 ms delay ##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 0ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 5ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 5ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 25ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 25ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 50ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 50ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 100ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 100ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 200ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 200ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 300ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 300ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 500ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 500ms
ping -c 10 18.237.114.0 >> ping_results.txt

echo "######Introducing 1000ms delay##########" >>ping_results.txt
sudo tc qdisc change dev eno1 root netem delay 1000ms
ping -c 10 18.237.114.0 >> ping_results.txt

