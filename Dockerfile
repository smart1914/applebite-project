FROM devopsedu/webapp

# 1. Clean out the default placeholder web directory
RUN rm -rf /var/www/html/*

# 2. Install Git and clone Edureka's official website repo files straight inside
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/edureka-devops/projCert.git /tmp/edureka-code && \
    cp -r /tmp/edureka-code/proj/* /var/www/html/ && \
    rm -rf /tmp/edureka-code

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
