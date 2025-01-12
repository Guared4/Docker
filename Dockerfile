FROM alpine:latest

RUN apk update && apk add nginx

RUN mkdir -p /var/lib/nginx/html

COPY index.html /var/lib/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]