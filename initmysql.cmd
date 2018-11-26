setx PATH '%PATH%;C:\MySQL\bin'
C:\MySQL\bin\mysqld --initialize-insecure --console --explicit_defaults_for_timestamp
C:\MySQL\bin\mysqld --install MySQL --defaults-file="C:\MySQL\my.ini"
powershell Start-Service mysql
ipconfig
C:\MySQL\bin\mysql -u root --skip-password -e "CREATE DATABASE Rocs; CREATE USER 'root'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON root.* TO 'root'@'%'; CREATE USER 'rocs'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON rocs.* TO 'rocs'@'%'; CREATE USER 'rocs'@'localhost' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON rocs.* TO 'rocs'@'localhost'; SET PASSWORD FOR 'root'@'%' = PASSWORD('P@ssw0rd'); SET PASSWORD FOR 'root'@'localhost' = PASSWORD('P@ssw0rd'); SET PASSWORD FOR 'rocs'@'%' = PASSWORD('P@ssw0rd'); SET PASSWORD FOR 'rocs'@'localhost' = PASSWORD('P@ssw0rd'); FLUSH PRIVILEGES;"
ping localhost -t
