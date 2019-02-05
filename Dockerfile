FROM nextcloud:15.0

COPY ./after-install.sh /after-install.sh

RUN chmod +x /after-install.sh
RUN chown www-data:www-data /after-install.sh

CMD ["/after-install.sh", "apache2-foreground"]
