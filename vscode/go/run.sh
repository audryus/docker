export DIR=$HOME/.vscode-go-docker
mkdir $DIR
docker run -it -p 127.0.0.1:8080:8443 -v $DIR:/home/coder/project audryus/code-server-go:1.12.7 --allow-http --no-auth
