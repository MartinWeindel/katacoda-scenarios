#!/bin/sh

rm -rf ~/.*

cd /usr/local/bin
curl -O -L https://github.com/mandelsoft/spiff/releases/download/qual/spiff_linux_amd64.zip 
unzip spiff_linux_amd64.zip
rm spiff_linux_amd64.zip
mv spiff++ spiff
