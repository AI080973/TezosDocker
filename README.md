# Tezos Docker

## Running on Ubuntu

### Install Package

```
sudo add-apt-repository ppa:serokell/tezos && sudo apt-get update
sudo apt-get install -y tezos-client
sudo apt-get install -y tezos-node
sudo apt-get install -y tezos-baker-011-pthangz2
sudo apt-get install -y tezos-endorser-011-pthangz2
sudo apt-get install -y tezos-accuser-011-pthangz2
```



## Running on Docker



### Download Dockerfile

```
git clone https://github.com/AI080973/TezosNode-client.git 
```

### Make Docker Image

```
docker build -t tezos:lastest .
```

### Importing a snapshot

#### Step 1: Download FULL Testnet [snapshot](https://snapshots-tezos.giganode.io/) File

#### Step 2: Copy the snapshot-testnet.full file into container.
	
#### Step 3: Remove root/.tezos_node/lock,context and store 
	
```
cd root/.tezos_node
rm lock
rm -r context
rm -r store
```
	
#### Step 4: RUN snapshot command
	
```
tezos-node snapshot import <FULLPATH>/snapshot.full

```

## Building Net(Test Net)

```
tezos-node config init --data-dir ~/tezos-hangzhounet --network hangzhounet
tezos-node identity generate --data-dir ~/tezos-hangzhounet
tezos-node run --data-dir ~/tezos-hangzhounet
```




## Command

### Run Tezos-node in Hangzhounet

```
tezos-node run --data-dir ~/tezos-hangzhounet --rpc-addr 127.0.0.1
```

### Activate Account

#### [https://teztnets.xyz/](https://teztnets.xyz/)

tezos-client activate account faucet with /tmp/hangzhounet.json
tezos-client get balance for tz1xxxxxxxxxxxxxxxxx
```


## error

### Unable to connect to the node: "resolution failed: unknown scheme"

#### Try [This](https://gitlab.com/tezos/tezos/-/issues/634) them restart shell.

#### Or Try[This](https://www.reddit.com/r/tezos/comments/a6h7or/issue_with_tezos_client/) them restart shell.