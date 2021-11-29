FROM ubuntu-dev
MAINTAINER "Yoshikawa, Hiroyuki @Fujitsu Ltd." <yoh@fujitsu.com>

ENV DEBIAN_FRONTEND=noninteractive

ARG http_proxy=""
ARG https_proxy=""

USER user
WORKDIR /home/user/prj

RUN pip3 install allensdk --user \
 && pip3 install sklearn --user
RUN cd /home/user \
 && git clone https://github.com/kamdh/mouse_connectivity_models.git \
 && cd  mouse_connectivity_models \
 && pip3 install . \
 && cd .. \
 && rm -rf mouse_connectivity_models

