echo $TESTVAR

python3 ./script.py

echo "Server hostname is" $HOSTNAME

CLIENT_HOSTNAME=`cat /home/connect/clientbox-hostname`

echo "Client hostname is" $CLIENT_HOSTNAME
