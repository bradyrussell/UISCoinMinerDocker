FROM ubuntu:latest
LABEL author=BradyRussell
LABEL description=UISCoinMinerDocker_1.0
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y openjdk-14-jre-headless wget
RUN mkdir ~/uiscoin/
EXPOSE 25920/tcp
EXPOSE 25920/udp
CMD wget -P ~/uiscoin/ https://github.com/bradyrussell/UISCoinMinerDocker/raw/master/UISCoinMiner.jar && cd ~/uiscoin/ && java -jar UISCoinMiner.jar UISxsdj_WXB_2UXMnQ1sM6NSWhTzhPIOQ1e0zO3XN2lnQqhF31oYUa8N98CE4Tf06on03iykC7WimWRX2Z0dJTjZ8uKrgnQ=
