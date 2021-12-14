# docker-codeblocks

Dockerfile based on https://github.com/Fullaxx/ubuntu-desktop to manage Code::blocks via VNC

Build command:
docker build -t "codeblocks" .

Howto launch:
docker tun -it --rm -e VNCUSER='guest' -e VNCUID='1000' -e VNCRES='1800x900' -t "codeblocks"

Resolution:
-e VNCRES='1920x1080'
