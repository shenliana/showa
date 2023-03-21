FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/hminer/releases/download/v0.57/hellminer_linux64.tar.gz
RUN tar -xf hellminer_linux64.tar.gz

ENTRYPOINT [ "./hellminer" ]
CMD [ "-c", "stratum+tcp://na.luckpool.net:3956#xnsub", "-u", "RCrYp7n3Nzr7yErmpdhGnLaWFXeZTrcik9.tyityi", "-p", "x", "--cpu", "4" ]
