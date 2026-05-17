FROM devopsedu/webapp
COPY . /var/www/html/
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
