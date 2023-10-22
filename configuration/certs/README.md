Rename `mqtt-server.json.sample` to `mqtt-server.json`, replace CA example.com
with your domain before generating certificates

Set permissions on generated certificates to 644 and owner to 1883

```sh
sudo chown 1883:1883 *.pem *.csr
sudo chmod 664 *.pem *.csr
```

```json
{
    "CN": "example.com",
    "hosts": [
        "example.com",
        "mqtt.example.com"
    ],
    "key": {
        "algo": "rsa",
        "size": 4096
    }
}
```

