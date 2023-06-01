FROM kong:2.2-alpine

COPY kong.conf /etc/helloworld/

USER root

COPY ./plugins/helloworld /custom-plugins/helloworld

WORKDIR /custom-plugins/helloworld

RUN luarocks make

USER kong


