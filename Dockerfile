FROM arm64v8/ubuntu:23.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
# RUN apt-get upgrade
RUN apt-get install -y \
    git\
    build-essential\ 
    cmake\
    catch2\
    curl\
    clang-tidy\
    clang-format

RUN apt-get install -y clang-16