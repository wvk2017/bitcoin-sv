FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/bitcoin-sv/bitcoin-sv/releases/download/v1.1.1/bitcoin-sv-1.1.1-x86_64-linux-gnu.tar.gz
RUN tar zxvf bitcoin-sv-1.1.1-x86_64-linux-gnu.tar.gz
RUN mv bitcoin-sv-1.1.1/bin/* /usr/bin/
CMD /usr/bin/bitcoind -printtoconsole
