#!/bin/sh

svnlite export -q https://github.com/reloxx13/TasmoAdmin/trunk/tasmoadmin /usr/local/www/tasmoadmin

find /usr/local/www/tasmoadmin -type f -name ".htaccess" -depth -exec rm -f {} \;
find /usr/local/www/tasmoadmin -type f -name ".empty" -depth -exec rm -f {} \;

chown -R www:www /usr/local/www/tasmoadmin
chmod +x /root/bin/tasmo-pwreset

sysrc -f /etc/rc.conf nginx_enable=YES
sysrc -f /etc/rc.conf php_fpm_enable=YES

service nginx start  2>/dev/null
service php-fpm start  2>/dev/null
