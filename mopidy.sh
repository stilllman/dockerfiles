#!/bin/bash

if [ -n "$SPOTIFY_USERNAME" ] && [ -n "$SPOTIFY_PASSWORD" ]; then
    echo "Enabling Spotify..."
    sed -i "s/\[spotify\]/[spotify]\nusername=${SPOTIFY_USERNAME}\npassword=${SPOTIFY_PASSWORD}/" /root/.config/mopidy/mopidy.conf
else
    echo "Disabling Spotify..."
    sed -i 's/\[spotify\]/[spotify]\nenabled=false/' /root/.config/mopidy/mopidy.conf
fi

if [ -n "$LASTFM_USERNAME" ] && [ -n "$LASTFM_PASSWORD" ]; then
    echo "Enabling LastFM scrobbling..."
    sed -i "s/\[scrobbler\]/[scrobbler]\nusername=${LASTFM_USERNAME}\npassword=${LASTFM_PASSWORD}/" /root/.config/mopidy/mopidy.conf
else
    echo "Disabling LastFM scrobbling..."
    sed -i 's/\[scrobbler\]/[scrobbler]\nenabled=false/' /root/.config/mopidy/mopidy.conf
fi

exec mopidy $@
