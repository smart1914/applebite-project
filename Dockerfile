FROM devopsedu/webapp

# Delete the default Apache index file so your PHP code takes over
RUN rm -f /var/www/html/index.html

COPY . /var/www/html/
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
