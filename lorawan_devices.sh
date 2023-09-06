git clone https://github.com/TheThingsNetwork/lorawan-devices
git pull
docker exec chirpstack-docker-chirpstack-1 chirpstack -c /etc/chirpstack/ import-legacy-lorawan-devices-repository --dir /opt/lorawan-devices

