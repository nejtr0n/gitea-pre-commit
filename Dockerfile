FROM gitea/gitea:1.22.3-rootless
ARG PRE_COMMIT_VERSION=3.7.1-r0

USER 0:0
RUN apk add --update --no-cache pre-commit=${PRE_COMMIT_VERSION} \
    && rm -rf /var/cache/apk/* \

USER 1000:1000