FROM debian:jessie

RUN apt-get -q update
RUN apt-get -qy install build-essential automake pkg-config ncurses-dev libevent-dev locales file unzip curl wget git vim ssh sysstat net-tools apt-utils nload

ADD https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz /src/
ADD https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz /src/

RUN cd /src && tar -xzf libevent-2.0.22-stable.tar.gz && tar -xzf tmux-2.3.tar.gz && rm -rf *.tar.gz

RUN cd /src/libevent-2.0.22-stable && ./configure && make && make install
RUN cd /src/tmux-2.3 && ./configure && make && make install

ADD https://github.com/ddallair/tmux-resurrect/archive/master.zip /src/tmux-resurrect.zip
ADD https://github.com/tmux-plugins/tmux-continuum/archive/master.zip /src/tmux-continuum.zip

RUN cd /src && unzip tmux-resurrect.zip && unzip tmux-continuum.zip && rm -rf *.zip

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen --purge en_US.UTF-8

ENV TZ America/Montreal
ENV TERM xterm
ENV LANG UTF-8
ENV LC_ALL en_US.UTF-8

ADD .tmux.conf /root/.tmux.conf
