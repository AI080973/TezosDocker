# Tezos Docker

## Running

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

## Command

### Run Tezos-node in Granadanet

```
tezos-node run --data-dir ~/tezos-granadanet --rpc-addr 127.0.0.1
```

### Activate Account

```
tezos-client activate account bob with tz1ZQYMDETodNBAc2XVbhZFGme8KniuPqrSw.json
BOB_ADDRESS="tz1ZQYMDETodNBAc2XVbhZFGme8KniuPqrSw"
tezos-client get balance for $BOB_ADDRESS
```