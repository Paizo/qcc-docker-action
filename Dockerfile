FROM alpine:3.10

COPY entrypoint.sh fteqcc_linux64.zip ./

RUN apk add unzip \
&& unzip fteqcc_linux64.zip \
&& chmod +x /entrypoint.sh \
&& chmod +x /fteqcc64

ENTRYPOINT ["/entrypoint.sh"]
