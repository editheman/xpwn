FROM ubuntu:latest

RUN apt-get update && apt-get install -y make cmake build-essential libz-dev libssl-dev libbz2-dev libpng-dev libusb-dev

COPY ../ /xpwn

WORKDIR /xpwn

RUN mkdir builddir

WORKDIR /xpwn/builddir

RUN cmake ..
RUN make

WORKDIR /