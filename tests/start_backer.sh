CONFIG_DIR=$(pwd)
STORE_DIR=$(pwd)/store

mkdir -p $CONFIG_DIR/keri/cf
echo '{
    "witroot": {
      "dt": "2022-01-20T12:57:59.823350+00:00",
      "curls": ["tcp://127.0.0.1:5665/", "http://127.0.0.1:5666/"]
    },
    "dt": "2022-01-20T12:57:59.823350+00:00",
    "iurls": [
    ]
  }
  ' > $CONFIG_DIR/keri/cf/witroot.json
echo '{
    "transferable": false,
    "wits": [],
    "icount": 1,
    "ncount": 1,
    "isith": "1",
    "nsith": "1"
  }' > $CONFIG_DIR/witroot_cfg.json

kli init --name witroot --nopasscode  --config-dir $CONFIG_DIR --config-file witroot --base $STORE_DIR

kli incept --name witroot --alias witroot --config $CONFIG_DIR --file witroot_cfg.json --base $STORE_DIR

backer start --name witroot --alias witroot -H 5666 -T 5665 --ledger cardano --base $STORE_DIR