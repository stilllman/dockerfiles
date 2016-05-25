This is an image for the snapcast server (https://github.com/badaix/snapcast).

The server reads from the default named pipe at /tmp/snapfifo. To make this pipe shared with other processes, one can use a data volume:
docker run --rm --name snapserver -v /tmp/snapcast:/tmp snapserver