FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y build-essential wget bison flex libboost-dev gputils texinfo
RUN wget https://sourceforge.net/projects/sdcc/files/sdcc/3.7.0/sdcc-src-3.7.0.tar.bz2
RUN tar -xjvf sdcc-src-3.7.0.tar.bz2
RUN cd sdcc && ./configure
RUN cd sdcc && make
RUN cd sdcc && make install
