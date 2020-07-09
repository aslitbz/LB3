FROM httpd:2.4.39-alpine
RUN apk update; \
    apk upgrade;

COPY src/ /var/www/html
COPY demo.apache.conf /usr/local/apache2/conf/demo.apache.conf
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf
EXPOSE 80