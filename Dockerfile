FROM continuumio/anaconda3

WORKDIR /workspace

# mecab with neologd
RUN apt-get update \
    && apt-get install -y mecab \
    && apt-get install -y libmecab-dev \
    && apt-get install -y mecab-ipadic-utf8 \
    && apt-get install -y git \
    && apt-get install -y make\ 
    && apt-get install -y curl\
    && apt-get install -y xz-utils\
    && apt-get install -y file\
    && apt-get install -y sudo\
    && apt-get install -y wget\
    && apt-get install -y build-essential

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git\
    && cd mecab-ipadic-neologd\
    && bin/install-mecab-ipadic-neologd -n -y

RUN conda install -c anaconda swig -y
RUN pip install mecab-python3==0.7

# Japanese Font
RUN apt install fonts-takao -y

# NLP
RUN pip install neologdn
RUN conda install -c anaconda gensim -y

# tweepy
RUN pip install tweepy

CMD jupyter-lab --no-browser \
  --port=8888 --ip=0.0.0.0 --allow-root
