FROM alpine:3.14.2

MAINTAINER erstblack

RUN apk add --no-cache bash ffmpeg python3 py-pip zip py3-pycryptodomex mutagen coreutils py3-websockets py3-brotli
RUN python3 -m pip install --no-cache-dir -U yt-dlp

COPY ./archive.sh ./youtube-archive.conf /app/

ENTRYPOINT ["/bin/bash", "/app/archive.sh"]
