#!/bin/bash

if [ -n "$SPOTIFY_USERNAME" ] && [ -n "$SPOTIFY_PASSWORD" ]; then
    sed -i.bak "s/\[spotify\]/[spotify]\nusername=${SPOTIFY_USERNAME}\npassword=${SPOTIFY_PASSWORD}/" /root/.config/mopidy/mopidy.conf
else
    sed -i.bak 's/\[spotify\]/[spotify]\nenabled=false/' /root/.config/mopidy/mopidy.conf
fi

if [ -n "$LASTFM_USERNAME" ] && [ -n "$LASTFM_PASSWORD" ]; then
    sed -i.bak "s/\[scrobbler\]/[scrobbler]\nusername=${LASTFM_USERNAME}\npassword=${LASTFM_PASSWORD}/" /root/.config/mopidy/mopidy.conf
else
    sed -i.bak 's/\[scrobbler\]/[scrobbler]\nenabled=false/' /root/.config/mopidy/mopidy.conf
fi

exec mopidy $@
