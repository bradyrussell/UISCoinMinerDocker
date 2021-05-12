FROM ubuntu:latest
LABEL author=BradyRussell
LABEL description=UISCoinMinerDocker_1.0
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y openjdk-14-jre-headless
RUN apt-get install -y wget
RUN mkdir ~/uiscoin/
VOLUME ~/uiscoin/
#workdir doesnt seem to do much for me
WORKDIR ~/uiscoin/
RUN wget -P ~/uiscoin/ https://github.com/bradyrussell/UISCoinMinerDocker/raw/master/UISCoinMiner.jar
EXPOSE 25920/tcp
EXPOSE 25920/udp
CMD cd ~/uiscoin/ && java -jar UISCoinMiner.jar
