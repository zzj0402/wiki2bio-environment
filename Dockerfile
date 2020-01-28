FROM tensorflow/tensorflow:1.0.0-gpu

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop

WORKDIR /root/

RUN git clone https://github.com/tyliupku/wiki2bio.git

WORKDIR /root/wiki2bio/

RUN pip install gdown

RUN gdown --id 15AV8LeWY3nzCKb8RRbM8kwHAp_DUZ5gf -O original_data.zip
RUN unzip original_data.zip
RUN rm original_data.zip

RUN python preprocess.py

RUN pip install nltk
RUN python -m nltk.downloader all