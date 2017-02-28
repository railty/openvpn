#refer to https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-16-04

#initial setup
sudo apt-get update
sudo apt-get install openvpn easy-rsa
cd 
make-cadir ~/openvpn-ca

#create clients
./make-client.sh client1

#then transfer the clients/client1.conf to client machine

#remove client
if the client has already existed, you will see an error because it is already
existed in index.txt.
#remove the line from index.txt will fix it

#limitations
1.under windows, you need run as admin to install the client, as it will need install the tap driver and create a network card
2.cannot find updated portable executable under windows

