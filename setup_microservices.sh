NODE_VERSION=8.9.3

echo "Getting NVM and setting up Node ..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
echo "Installing Node $NODE_VERSION ..."
nvm install $NODE_VERSION
nvm use $NODE_VERSION

echo "Installing Yarn using NPM ..."
npm install -g yarn

echo "Setting up and starting the server!"
yarn run start
