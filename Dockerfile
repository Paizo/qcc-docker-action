FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh
COPY /fteqcc_linux64/fteqcc64 /fteqcc64

# RUN apk add unzip \
# && unzip fteqcc_linux64.zip \
# && chmod +x /entrypoint.sh \
# && chmod +x /fteqcc64

ENTRYPOINT ["/entrypoint.sh"]
