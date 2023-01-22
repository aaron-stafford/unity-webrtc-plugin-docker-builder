FROM --platform=linux/amd64 ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y curl 
RUN apt install -y python-is-python3
RUN apt install -y git 
RUN apt install -y unzip
RUN apt install -y build-essential
RUN apt install -y zip
ADD https://github.com/Kitware/CMake/releases/download/v3.24.1/cmake-3.24.1-linux-x86_64.sh cmake-3.24.1-linux-x86_64.sh
RUN mkdir /opt/cmake
RUN bash cmake-3.24.1-linux-x86_64.sh --prefix=/opt/cmake --skip-license
ENV PATH="$PATH:/opt/cmake/bin"
ADD https://dl.google.com/android/repository/android-ndk-r22b-linux-x86_64.zip android-ndk-r22b-linux-x86_64.zip
RUN unzip android-ndk-r22b-linux-x86_64.zip
ENV ANDROID_NDK=/android-ndk-r22b
CMD ["./script/runner.sh"]
