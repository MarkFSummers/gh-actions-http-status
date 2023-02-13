FROM alpine:latest

LABEL version="0.0.1"
LABEL repository="https://github.com/MarkFSummers/gh-actions-http-status"
LABEL homepage="https://github.com/MarkFSummers/gh-actions-http-status"
LABEL maintainer="Mark Summers <msummers@archinsurance.co.uk>"

RUN apk add bash curl jq

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
