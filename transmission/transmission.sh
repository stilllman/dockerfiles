#!/bin/bash

if [ -n "$TRANSMISSION_USERNAME" ] && [ -n "$TRANSMISSION_PASSWORD" ]; then
    echo "Setting rpc authentication..."
    sed -i "s/@TRANSMISSION_ENABLED@/true/" ~/.config/transmission-daemon/settings.json
    sed -i "s/@TRANSMISSION_USERNAME@/\"${TRANSMISSION_USERNAME}\"/" ~/.config/transmission-daemon/settings.json
    sed -i "s/@TRANSMISSION_PASSWORD@/\"${TRANSMISSION_PASSWORD}\"/" ~/.config/transmission-daemon/settings.json
else
    echo "Removing rpc authentication..."
    sed -i "s/@TRANSMISSION_ENABLED@/false/" ~/.config/transmission-daemon/settings.json
    sed -i "s/@TRANSMISSION_USERNAME@/\"\"/" ~/.config/transmission-daemon/settings.json
    sed -i "s/@TRANSMISSION_PASSWORD@/\"\"/" ~/.config/transmission-daemon/settings.json
fi

exec transmission-daemon -f $@
