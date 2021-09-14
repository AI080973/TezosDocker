# TezosNode-client

## How to run

### Download Dockerfile

```
git clone https://github.com/AI080973/TezosNode-client.git 
```

### Make Docker Image

```
docker build -t tezos:lastest .
```

### Importing a snapshot

#### Step 1: Download FULL Testnet snapshot File

<https://snapshots-tezos.giganode.io/>

#### Step 2: Copy the file snapshot-testnet.full into container.
	
#### Step 3: RUN clear command(This command will remove all blockchain data.)
	
```
tezos clear
```
	
#### Step 4: RUN snapshot command
	
```
tezos snapshot import <FULLPATH>/snapshot.full
```
