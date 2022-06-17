FROM alpine:latest
COPY ./sedmachine.docker /opt/sedmachine
RUN apk --no-cache add curl jq
RUN install -D /dev/null /var/cache/sm_offset
CMD ["sh","-c","while :; do /opt/sedmachine; done"]

