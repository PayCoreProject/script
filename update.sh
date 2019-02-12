paycore-cli stop
rm -rf /usr/local/bin/paycore*
rm -rf daemon*
rm -rf .paycore/mncache.dat .paycore/mnpayments.dat .paycore/peers.dat .paycore/blocks .paycore/chainstate .paycore/database
wget https://github.com/PayCoreProject/PayCore/releases/download/1.2.2/daemon.zip
unzip daemon.zip
sudo chmod -R 755 paycore-cli
sudo chmod -R 755 paycored
sudo cp -p -r paycored /usr/local/bin
sudo cp -p -r paycore-cli /usr/local/bin
sleep 10
paycored -daemon -reindex
