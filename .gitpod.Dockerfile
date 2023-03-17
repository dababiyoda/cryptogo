FROM gitpod/workspace-full

USER gitpod

# Install Node.js 14.x
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo bash - \
  && sudo apt-get install -y nodejs

# Install Expo CLI
RUN sudo npm install --global expo-cli
