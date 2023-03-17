FROM gitpod/workspace-full:latest

USER gitpod

RUN wget -qO- https://deb.nodesource.com/setup_14.x | bash - \
    && sudo apt-get install -y nodejs

RUN sudo apt-get update && sudo apt-get install -y \
    openjdk-11-jdk \
    && sudo apt-get clean && sudo rm -rf /var/cache/apt/* && sudo rm -rf /var/lib/apt/lists/* && sudo rm -rf /tmp/*

RUN npm install -g react-native-cli expo-cli
