#Vagrant+VirtualBoxでcentos6.5にsymfony1.4を構築

<次回起動時用>
vi /etc/sysconfig/selinux
SELINUX=enforcing
   ↓
SELINUX=disabled

<即時反映用>
set enforce 0

#設定変更
sudo vi /etc/yum.repos.d/remi.repo
ファイルの [remi] セクションで "enabled" オプションを 1 に設定します。

#httpd 再起動
/etc/init.d/httpd restart

#ログイン後、DBとユーザ作成
CREATE DATABASE palnavi_yokado CHARACTER SET utf8;
create user 'yokadouser'@'localhost' identified by 'yokadopasswd';
GRANT ALL ON palnavi_yokado.* to yokadouser@localhost;
FLUSH PRIVILEGES;
