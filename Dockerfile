FROM arm64v8/ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y clang\
    git\
    build-essential\ 
    cmake\
    catch2\
    curl\
    clang-format
