FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip -y
RUN pip3 install --no-cache-dir -U pip==23.1.2
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -r requirements.txt
CMD python3 ban.py
