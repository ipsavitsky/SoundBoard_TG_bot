FROM python:3.12-alpine

COPY ./dist/soundboard_tg_bot-0.1.0-py3-none-any.whl ./

RUN pip install soundboard_tg_bot-0.1.0-py3-none-any.whl

RUN apk add --no-cache ffmpeg && rm -rf /var/cache/apk/*

ENTRYPOINT ["python", "-m", "soundboard_tg_bot"]
