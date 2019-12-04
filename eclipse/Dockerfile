FROM ubuntu:18.04
MAINTAINER Audryus "audryus.smart@gmail.com"

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:linuxuprising/java && \
    apt-get update && \
    apt-get install -y libxext-dev libxrender-dev libxtst-dev

RUN apt-get update && apt-get install -y libgtk2.0-0 libgtk-3-0 libcanberra-gtk3-0

RUN echo oracle-java13-installer shared/accepted-oracle-license-v1-2 boolean true | /usr/bin/debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-2 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-2 seen true | debconf-set-selections && \
    apt-get update && \ 
	apt-get install -y oracle-java13-installer && \
    apt-get install oracle-java13-set-default

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN wget http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/technology/epp/downloads/release/2019-09/R/eclipse-jee-2019-09-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse' && \
    tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

ADD run /usr/local/bin/eclipse

RUN chmod +x /opt/eclipse/eclipse && \
    mkdir -p /home/developer && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group

RUN chown developer:developer -R /home/developer
RUN chown developer:developer -R /opt/eclipse

RUN apt-get update && \
	apt-get install -y vim-tiny

RUN echo '-javaagent:/home/developer/.m2/repository/org/projectlombok/lombok/1.18.10/lombok-1.18.10.jar' >> /opt/eclipse/eclipse.ini && \
	echo '-Xbootclasspath/a:/home/developer/.m2/repository/org/projectlombok/lombok/1.18.10/lombok-1.18.10.jar' >> /opt/eclipse/eclipse.ini

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /opt/eclipse/eclipse
