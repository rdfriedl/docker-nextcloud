if [ -z ${NEXTCLOUD_DOMAIN+x} ]; then
	su -c "/var/www/html/occ config:system:set trusted_domains 2 --value=$NEXTCLOUD_DOMAIN" -s /bin/sh www-data
fi

exec "$@"
