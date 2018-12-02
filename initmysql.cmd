setx PATH '%PATH%;C:\app\MySQL\bin'
C:\app\MySQL\bin\mysqld --initialize-insecure --console --explicit_defaults_for_timestamp
C:\app\MySQL\bin\mysqld --install MySQL --defaults-file="C:\app\MySQL\my.ini"

powershell Start-Service mysql

C:\app\MySQL\bin\mysql -e "CREATE DATABASE rocs_dev;"

ping localhost -t
