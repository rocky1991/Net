sudo echo "" >downloat_time.txt
# sudo tc qdisc del dev eno1 root

prev_t=$(($(date +%s%N)/1000000))

scp -i ~/Downloads/key1.pem ubuntu@18.237.114.0:/home/ubuntu/test.tar .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Compression time is "$cur_t-$prev_t >> download_time.txt
