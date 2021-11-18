FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles
RUN apt-get update && apt-get install -y git cmake g++

COPY . /code/nn-from-scratch
WORKDIR /code/nn-from-scratch

LABEL Name=nn-from-scratch Version=0.0.1
