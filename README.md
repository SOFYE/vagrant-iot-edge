# Vagrant IoT Edge

Easy Microsoft Azure IoT Edge development environment with Vagrant.

This uses an Ubuntu 16.04 LTS 64-bit box with everything provisioned to run IoT Edge.

Node.js is installed by the Node Version Manager.


## Usage

Make sure you have installed [VirtualBox](https://www.virtualbox.org) and [Vagrant](https://www.vagrantup.com)


Run the virtual machine :

    vagrant up
    vagrant ssh

Create a directory for IoT Edge :

    mkdir demo-iot-edge
    cd demo-iot-edge

Install and run IoT Edge :

    yo az-iot-gw-module
    npm install
    npm start
