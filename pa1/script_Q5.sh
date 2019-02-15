sudo echo "" >download_results.txt
sudo tc qdisc del dev eno1 root


sudo tc qdisc add dev eno1 root netem delay 100ms
echo "######Introducing 0 ms delay ##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 0ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 50ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 50ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 100ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 100ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 200ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 200ms

prev_t=$(($(date +%s%N)/1000000))
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 300ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 300ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 400ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 400ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 500ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 500ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 600ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 600ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

echo "######Introducing 700ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 700ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 800ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 800ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 900ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 900ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######Introducing 1000ms delay##########" >>download_results.txt
sudo tc qdisc change dev eno1 root netem delay 1000ms
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


sudo echo "" >download_results.txt

sudo tc qdisc del dev eno1 root
echo "######## No bandwidth setting ####" >> download_results.txt
prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

sudo tc qdisc add dev eno1 root tbf rate \
1mbit burst 32kbit limit 10000

echo "######## Set bandwidth to be 1M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

echo "######## Set bandwidth to be 2M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

echo "######## Set bandwidth to be 3M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

echo "######## Set bandwidth to be 4M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

echo "######## Set bandwidth to be 5M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt

echo "######## Set bandwidth to be 6M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt


echo "######## Set bandwidth to be 7M ####" >> download_results.txt

prev_t=$(($(date +%s%N)/1000000))
scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.txt .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Download time is "$cur_t-$prev_t >> download_results.txt
