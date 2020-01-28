FROM tensorflow/tensorflow:1.0.0-gpu

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop

WORKDIR /root/

RUN git clone https://github.com/tyliupku/wiki2bio.git