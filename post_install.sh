#!/bin/sh

release="https://api.github.com/repos/TasmoAdmin/TasmoAdmin/releases/latest"
url="$(curl -sL ${release} | grep browser_download_url | grep tar.gz | cut -d : -f 2,3 | tr -d \",)"

# shellcheck disable=SC2086
curl -sL ${url} | tar -xzf - -C /usr/local/www

find /usr/local/www/tasmoadmin -type f -name ".htaccess" -depth -exec rm -f {} \;
find /usr/local/www/tasmoadmin -type f -name ".empty" -depth -exec rm -f {} \;

chown -R www:www /usr/local/www/tasmoadmin
chmod +x /root/bin/tasmo-pwreset

sysrc -f /etc/rc.conf nginx_enable=YES
sysrc -f /etc/rc.conf php_fpm_enable=YES

service nginx start  2>/dev/null
service php-fpm start  2>/dev/null
