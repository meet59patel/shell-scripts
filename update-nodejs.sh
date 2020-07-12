#! /bin/bash

mkdir tempnoderepo && cd tempnoderepo
npm init -y
sudo npm i n
sudo ./node_modules/.bin/n stable
sudo npm uninstall n
cd ..
sudo rm -rf tempnoderepo