#!/bin/sh

tor --version

cat > ./torrc <<EOF
HiddenServiceDir ./hidden_service
HiddenServicePort $HS_PORT $HS_TARGET
EOF

tor -f ./torrc SocksPort 0 DataDirectory ./data