FROM alpine:edge
RUN apk --no-cache add socat
ENV HTTP_PORT 1234
ADD message.sh .
CMD ["sh", "message.sh"]
