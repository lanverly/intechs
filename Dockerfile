FROM nginx:latest
LABEL Author="Byron Lanverly"

ENV APP_HOME /usr/share/nginx/html

COPY ./public /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf

RUN chmod 755 -R /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT [ "nginx" ]
CMD ["-g", "daemon off;"]