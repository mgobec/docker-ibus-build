FROM ubuntu:wily
RUN apt-get -y update && apt-get -y dist-upgrade && \
    apt-get -y install wget build-essential intltool \
    libglib2.0-dev libgtk2.0-dev libgtk-3-dev libdconf-dev \
    libnotify-dev iso-codes checkinstall dconf-cli && \
    mkdir -p /etc/dconf/db
