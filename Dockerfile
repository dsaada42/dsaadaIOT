FROM alpine:latest

RUN apk add --no-cache nginx

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# CMD ["tail", "-f", "/dev/null"]
