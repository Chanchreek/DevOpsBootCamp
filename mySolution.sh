#!/bin/bash

# Download the tarball
wget https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/linux_project/secretGenerator.tar.gz

# Extract the tarball
tar -xvf secretGenerator.tar.gz

# Navigate into the src directory
cd src

# Prepare the environment
mkdir -p secretDir
rm -rf maliciousFiles
touch secretDir/.secret
chmod 600 secretDir/.secret
if [ -L 'important.link' ] && [ ! -e 'important.link' ]; then
  rm important.link
fi
echo "your content here" > CONTENT_TO_HASH

# Run the script to generate the secret
/bin/bash generateSecret.sh
