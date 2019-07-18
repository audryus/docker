FROM codercom/code-server
MAINTAINER Audryus "audryus.smart@gmail.com"

RUN sudo mkdir /usr/local/go && \
    sudo chown coder:coder -R /usr/local
 
RUN wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz -O /tmp/go.tar.gz -q && \
    echo 'Installing GO' && \
    tar -C /usr/local -xzf /tmp/go.tar.gz && \
    rm /tmp/go.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"



