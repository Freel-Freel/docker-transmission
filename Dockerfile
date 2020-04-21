FROM alpine:latest
MAINTAINER Lopatin Roman <freel@botans.org>

ARG USER=transmission
ARG UID=100
ARG GID=101

RUN apk add --no-cache transmission-daemon

COPY --chown=${UID}:${GID} settings.json /var/lib/${USER}/.config/transmission-daemon/

USER ${UID}:${GID}
WORKDIR /var/lib/${USER}

ENTRYPOINT ["/usr/bin/transmission-daemon", "-f"]
CMD []

EXPOSE 9091 51413
