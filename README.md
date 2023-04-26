# KERI Registrar Backer on Cardano
A KERI witness that anchors key events on Cardano blockchain.

## Work in progress...
Instructions will be provided soon.

In the meantime you can find some details at [keri-roots](https://github.com/roots-id/keri-roots)

and original `keripy` [PR](https://github.com/WebOfTrust/keripy/pull/418)


# Installation
```
pip install -e .
```
Check installation with:
```
backer --help
```

# Start script
```
./tests/start_backer.sh
```

# Docker
```
docker build -f ./Dockerfile .  -t cardano-backer   / use --platform=linux/amd64 if needed
docker run -i -t -e BLOCKFROST_API_KEY={API KEY} cardano-backer
```

