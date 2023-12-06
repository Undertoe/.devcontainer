FROM arm64v8/ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y clang\
    git\
    build-essential\ 
    cmake

# DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata

# RUN echo "2\n37\n" | apt-get install -y cmake\n\

# This is a convoluded way to install CMake with automated inputs
# RUN echo '#!/usr/bin/expect -f\n\
#     spawn apt-get install -y cmake\n\
#     expect "Geographic area: " { send "2\r" }\n\
#     expect "Time zone: " { send "37\r" }\n\
#     expect eof' > /tmp/install_cmake.expect && \
#     chmod +x /tmp/install_cmake.expect

# # Run the script to install CMake with automated inputs
# RUN /tmp/install_cmake.expect


