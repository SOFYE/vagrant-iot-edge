#!/bin/bash

main() {
  update_go
  dependencies_go
  nvm_go
  npm_go
}

update_go() {
  sudo apt-get -q -y update
  sudo apt-get -q -y upgrade
}

dependencies_go() {
  sudo apt-get -q -y install curl git libcurl3
}

nvm_go() {
  su ubuntu -c "wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash"

  export NVM_DIR="/home/ubuntu/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

  nvm install '8.8.1'
}

npm_go() {
  sudo chown -R ubuntu $(npm config get prefix)/{lib/node_modules,bin,share}

  npm install -g yo
  npm install -g generator-az-iot-gw-module
}

main
exit 0
