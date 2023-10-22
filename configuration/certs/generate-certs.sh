# https://www.chirpstack.io/docs/guides/mosquitto-tls-configuration.html
#sudo apt-get install golang-cfssl
cfssl gencert -initca ca-csr.json | cfssljson -bare ca
cfssl gencert -ca ca.pem -ca-key ca-key.pem -config ca-config.json -profile server mqtt-server.json | cfssljson -bare mqtt-server
sudo chown 1883:1883 *.pem *.csr
sudo chmod 644 *.pem *.csr
