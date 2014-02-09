#!/bin/bash

# from http://stackoverflow.com/questions/10268583/how-to-automate-download-and-instalation-of-java-jdk-on-linux
# download the latest jdk7
wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz -O jdk-7-linux-x64.tar.gz
tar -xvf jdk-7-linux-x64.tar.gz

sudo mkdir -p /opt/
sudo mv ./jdk1.7.* /opt/java7

sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java7/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/java7/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/java7/bin/javaws" 1

rm jdk-7-linux-x64.tar.gz

java -version
