FROM ubuntu:latest
MAINTAINER  Nitrax <0110111001100100011001100101111000@pm.me>

RUN apt update && apt install -y software-properties-common

RUN add-apt-repository ppa:ethereum/ethereum && apt update

RUN apt install -y solc python3 python3-pip nodejs-dev node-gyp libssl1.0-dev npm graphviz

RUN pip3 install mythril
RUN pip3 install slither-analyzer
RUN npm install -g surya

ADD script/run.sh /opt/run.sh

WORKDIR /tmp/data

ENTRYPOINT [ "/opt/run.sh" ]