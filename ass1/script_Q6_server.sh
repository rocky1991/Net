sudo echo "" >compress_time.txt
# sudo tc qdisc del dev eno1 root

prev_t=$(($(date +%s%N)/1000000))

tar -czvf test.tar test.txt  .
cur_t=$(($(date +%s%N)/1000000))

echo "#### Compression time is "$cur_t-$prev_t >> compress_time.txt

