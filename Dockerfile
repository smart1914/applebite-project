FROM devopsedu/webapp

# 1. Clean out default placeholder files
RUN rm -rf /var/www/html/*

# 2. Clone the code, move it into place, and fix ownership permissions
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/edureka-devops/projCert.git /tmp/edureka-code && \
    cp -r /tmp/edureka-code/proj/* /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/ && \
    rm -rf /tmp/edureka-code

EXPOSE 80

# 3. Clear old Apache PID lock files and run in the foreground
CMD rm -f /var/run/apache2/apache2.pid && apachectl -D FOREGROUND
