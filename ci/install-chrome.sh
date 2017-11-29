#!/bin/bash

set -xe
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -

echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

# Update packages
apt-get update -yqqq

# Install Chrome browser
apt-get install -qq -y google-chrome-stable

# Install Virtual Display emulator
apt-get install -qq -y xvfb

whereis google-chrome
whereis chrome


#try to fool google-chrome to run without sandbox
mv /usr/bin/google-chrome /usr/bin/google-chrome-orig \
    && echo '#!/bin/bash' > /usr/bin/google-chrome \
    && echo '/usr/bin/google-chrome-orig --no-sandbox --disable-setuid-sandbox --allow-sandbox-debugging "$@"' >> /usr/bin/google-chrome  \
    && chmod +x /usr/bin/google-chrome



