FROM quay.io/fedora/httpd-24

COPY httpdproxy.conf /etc/httpd/conf.d/httpdproxy
COPY htdigest /var/www/.htdigest
