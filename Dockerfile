FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /LazyPrincess
WORKDIR /Htpmoviess
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]


# Python Based Docker

FROM python:latest

# Installing Packages

RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages

RUN pip3 install -U pip

# Copying Requirements

COPY requirements.txt /requirements.txt

# Installing Requirements

RUN cd /

RUN pip3 install -U -r requirements.txt

RUN mkdir /LazyDeveloper

WORKDIR /Htpmoviess

COPY start.sh /start.sh

# Running MessageSearchBot

CMD ["/bin/bash", "/start.sh"]# Python Based Docker

FROM python:latest

# Installing Packages

RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages

RUN pip3 install -U pip

# Copying Requirements

COPY requirements.txt /requirements.txt

# Installing Requirements

RUN cd /

RUN pip3 install -U -r requirements.txt

RUN mkdir /Spiderman666

WORKDIR /Spiderman666

COPY start.sh /start.sh

# Running MessageSearchBot

CMD ["/python3", "/bot.py"]
