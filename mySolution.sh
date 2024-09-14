#!/bin/bash

wget https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/linux_project/secretGenerator.tar.gz

tar -xvf secretGenerator.tar.gz

cd src

mkdir -p secretDir
rm -rf maliciousFiles
touch secretDir/.secret
chmod 600 secretDir/.secret
if [ -L 'important.link' ] && [ ! -e 'important.link' ]; then
  rm important.link
fi
echo "your content here" > CONTENT_TO_HASH

/bin/bash generateSecret.sh
