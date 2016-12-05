FROM ubuntu:xenial

# Install CMake, compilers, GTest and GMock
RUN apt-get update
RUN apt-get install -y cmake
RUN apt-get install -y make
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y libgtest-dev
RUN apt-get install -y google-mock
RUN apt-get install -y git

# Compile GTest libraries
WORKDIR /usr/src/gtest
RUN cmake .
RUN make
RUN mv libg* /usr/lib/

RUN git clone --branch release-1.7.0 https://github.com/google/googlemock.git
RUN git clone --branch release-1.7.0 https://github.com/google/googletest.git
RUN mv googletest gtest
WORKDIR googlemock

# Compile GMock
RUN cmake .
RUN make
RUN mv libg* /usr/lib/
RUN cp -r ./include/gmock /usr/include/gmock

CMD echo "GTest and GMock installed on Ubuntu Xenial docker"
