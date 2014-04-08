#!/usr/bin/env bash

ZEND_SERVER_VERSION=6.3.0
PHP_VERSION=5.5


if ! ( dpkg-query -W zend-server-php-${PHP_VERSION} >/dev/null 2>&1 )
then
    wget --continue --no-verbose http://downloads.zend.com/zendserver/${ZEND_SERVER_VERSION}/ZendServer-${ZEND_SERVER_VERSION}-RepositoryInstaller-linux.tar.gz
    tar zxf ./ZendServer-${ZEND_SERVER_VERSION}-RepositoryInstaller-linux.tar.gz
    ./ZendServer-RepositoryInstaller-linux/install_zs.sh ${PHP_VERSION} --automatic
    rm -rf ./ZendServer-RepositoryInstaller-linux
fi

rm -rf /var/www
ln -sf /vagrant /var/www

gpasswd -a vagrant www-data

touch /vagrant/{x,v}debug.log
chmod a+rw /vagrant/*.log

apt-get install -y php-${PHP_VERSION}-xdebug-zend-server
ln -sfn /vagrant/xdebug.ini /usr/local/zend/etc/conf.d/xdebug.ini

service apache2 restart
apt-get clean
