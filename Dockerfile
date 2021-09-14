FROM ubuntu
ENV TZ=Asia/Taipei
RUN apt-get update
RUN apt-get -y upgrade
RUN apt update
RUN apt -y upgrade
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:serokell/tezos && apt-get update
RUN apt-get install -y tezos-client
RUN apt-get install -y tezos-node
RUN apt-get install -y tezos-baker-010-ptgranad
RUN apt-get install -y tezos-endorser-010-ptgranad
RUN apt-get install -y tezos-accuser-010-ptgranad
