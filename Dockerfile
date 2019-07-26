FROM alpine

RUN apk add --no-cache tzdata
ENV TZ Asia/Bishkek

RUN apk add curl

COPY . .

RUN chmod +x /run.sh

CMD crontab /cronjob && crond -f -L /dev/stdout