#!/usr/bin/env bash

sudo npm install typings -g
cd /vagrant/web

sudo npm install
sudo npm run typings install

echo "> type: 'npm start' to initialize and access: http://192.168.56.103:3000/ "