FROM ruby:slim

RUN apt-get update &&\
	apt-get install -y libssh2-1-dev cmake pkg-config curl git

RUN curl https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz | tar -xz -C /tmp && mv /tmp/docker/docker /usr/local/bin/docker
RUN gem install dapp -v 0.34.3

CMD /usr/local/bundle/bin/dapp
