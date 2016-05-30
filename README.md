This is an image for the snapcast client (https://github.com/badaix/snapcast).

By default, the client connects to "snapserver", so if you already have a snapserver
container running with `--name snapserver`, the client should connect to it. To play
audio, the client needs access to the sound device, so you must give it access when
running the container
docker run --rm --name snapclient --net=snapcast_nw --device=/dev/snd snapclient
