FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY dark_transcendence.epub /usr/share/nginx/html/dark_transcendence.epub

EXPOSE 8080
