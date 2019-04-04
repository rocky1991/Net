a=$1
if [ $1 = "1" ]; then
	echo "setting up Initiator net rule"

else
	echo "setting up net rule for kafka"${a}
fi
