FROM admiringworm/ubuntu
MAINTAINER Eric Crosson (eric.s.crosson@utexas.edu)

RUN apt-get update -qq && apt-get install -qq -y \
    bison \
    make \
    g++

RUN curl -o Src6.4.5.tar.gz http://spinroot.com/spin/Src/src645.tar.gz
RUN tar xf *.tar.gz
RUN make -C Src6.4.5 && make -C Src6.4.5 install && rm -rf Src6.4.5 src645.tar.gz
