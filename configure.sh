#!/bin/sh

# Download and install Daze
mkdir /tmp/daze
curl -L -H "Cache-Control: no-cache" -o /tmp/daze/daze.zip https://github.com/mohanson/daze/releases/latest/download/daze_linux_amd64.zip
unzip /tmp/daze/daze.zip -d /tmp/daze
install -m 755 /tmp/daze/daze /daze

# Remove temporary directory
rm -rf /tmp/daze

# Run Daze
/daze server -l -k $PASSWORD
