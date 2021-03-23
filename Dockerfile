# Basic Ubunto 20.04 image for running wagl unit tests
FROM ubuntu:focal

RUN apt-get -qq update
RUN apt-get install -y software-properties-common apt-utils
RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable -yu
RUN apt-get -qq update

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get upgrade --no-install-recommends -y

RUN apt-get install --no-install-recommends -y gfortran gdal-bin git python3-dev proj-bin
RUN which python3
RUN python3 --version
# RUN proj | grep Rel  # returns nonzero

# RUN export PS1="wagl-docker> "

# Setup container environment
# WORKDIR /projects

# TODO: needs git keys
# RUN git clone git@github.com:GeoscienceAustralia/wagl.git
