FROM devopsedu/webapp
RUN rm -rf /var/www/html/*
COPY index.php /var/www/html/index.php
CMD ["apachectl", "-D", "FOREGROUND"]
