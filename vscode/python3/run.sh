export DIR=$HOME/.vscode-python-docker
mkdir $DIR
docker run -it -p 127.0.0.1:8080:8443 -v $DIR:/home/coder/project audryus/code-server-python:3 --allow-http --no-auth
