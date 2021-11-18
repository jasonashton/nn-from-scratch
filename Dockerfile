FROM ubuntu:focal
RUN apt-get update && apt-get install -y \
  python3
WORKDIR /code
COPY . .
