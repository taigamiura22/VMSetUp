sudo yum -y install wget unzip
sudo /sbin/iptables -I INPUT 5 -p tcp --dport https -j ACCEPT
sudo /sbin/iptables -I INPUT 5 -p tcp --dport http -j ACCEPT
sudo /sbin/service iptables save
/etc/rc.d/init.d/iptables stop
chkconfig iptables off
sudo yum -y install httpd
sudo /etc/init.d/httpd start
sudo chkconfig httpd on
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm
sudo vi /etc/yum.repos.d/remi.repo
yum -y install php php-mbstring
sudo yum -y install php php-mbstring
/etc/init.d/httpd restart
sudo /etc/init.d/httpd restart
sudo yum -y install php-pecl-apc
vi /etc/php.d/apc.ini
sudo vi /etc/php.d/apc.ini
sudo /etc/rc.d/init.d/httpd restart
sudo yum -y install php-mcrypt
sudo yum -y install memcached
sudo /etc/init.d/memcached start
sudo chkconfig memcached on
sudo yum -y install php-pecl-memcache
sudo yum -y install php-pecl-memcached
sudo yum -y install php-pdo
sudo yum -y install php-mysql
sudo rpm -Va --nofiles --nodigest
sudo yum load-transaction /tmp/yum_save_tx-2015-03-20-16-574nNTzn.yumtx
sudo yum load-transaction /tmp/yum_save_tx-2016-02-13-04-55A0f9gk.yumtx
php-mysql.x86_64 0:5.3.3-49.el6
#symfony-install
pear channel-discover pear.symfony-project.com
sudo pear channel-discover pear.symfony-project.com
sudo wget http://dl.fedoraproject.org/pub/epel/6/i386/Packages/p/php-symfony-symfony-1.4.20-2.el6.noarch.rpm
sudo wget http://dl.fedoraproject.org/pub/epel/6/SRPMS/Packages/php-symfony-symfony-1.4.20-2.el6.src.rpm
sudo wget http://dl.fedoraproject.org/pub/epel/6/i386/
sudo rpm -Uvh epel-release*rpm
sudo yum -y install php-symfony-symfony-1.4.20
sudo yum -y install php-symfony-symfony-1.4.20
#END. symfony-install
sudo yum -y install git
yum install mysql mysql-devel mysql-server mysql-utilities
/etc/init.d/mysqld start
chkconfig mysqld on
#vim-install
sudo yum -y install mercurial
sudo yum -y install ncurses-devel
sudo yum -y install make
sudo yum -y install gcc
cd /usr/local/src
sudo hg clone https://bitbucket.org/vim-mirror/vim vim
sudo ./configure --with-features=huge --enable-multibyte --disable-selinux
sudo make
sudo make install
#END. vim-install
sudo ln -fs /vagrant /var/www/html
