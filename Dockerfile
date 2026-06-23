FROM python:2.7-slim
RUN echo "deb http://archive.debian.org/debian buster main" > /etc/apt/sources.list \
 && echo "deb http://archive.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list \
 && apt-get -o Acquire::Check-Valid-Until=false update \
 && apt-get install -y libenchant1c2a \
 && rm -rf /var/lib/apt/lists/*
RUN pip install pyenchant
COPY . /app
WORKDIR /app