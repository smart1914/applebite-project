FROM devopsedu/webapp
RUN rm -rf /var/www/html/*
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/edureka-devops/projCert.git /tmp/edureka-code && \
    cp -r /tmp/edureka-code/* /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/ && \
    rm -rf /tmp/edureka-code
EXPOSE 80
