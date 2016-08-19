#sudo adduser mq_user
#delete ibm MQ manager QM1
QMGR=QM1
PORT=1415
USER=mq_user

echo "endmqlsr -m $QMGR..."
endmqlsr -m $QMGR
sleep 5

echo
echo "endmqm $QMGR..."
endmqm $QMGR
sleep 12

echo
echo "dltmqm $QMGR..."
dltmqm $QMGR

