FROM alpine

RUN apk update \
    && apk add python3 git ffmpeg flac --no-cache \
    && git clone https://github.com/BennyThink/ExpressBot \
    && pip3 install -r /ExpressBot/requirements.txt

WORKDIR /yyets


CMD python3 yyets/main.py
