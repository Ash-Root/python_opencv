FROM ubuntu:18.04

RUN apt update -y && apt upgrade -y
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
    
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt install -y python3
RUN apt install -y python3-dev python3-pip python3-setuptools 
RUN python3 -m pip install --upgrade pip setuptools
RUN python3 -m pip install scikit-build numpy matplotlib pillow
RUN yes 1 | python3 -m pip install opencv-python sklearn