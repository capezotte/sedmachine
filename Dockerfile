FROM alpine:latest
RUN apk --no-cache add curl jq
COPY ./sedmachine /opt/sedmachine
COPY ./sed.docker /opt/sed-wrapper
RUN install -D /dev/null /var/cache/sm_offset
CMD ["sh","-c","while :; do SED=/opt/sed-wrapper /opt/sedmachine; done"]

