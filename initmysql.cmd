setx PATH '%PATH%;C:\MySQL\bin'
C:\MySQL\bin\mysqld --initialize-insecure --console --explicit_defaults_for_timestamp
C:\MySQL\bin\mysqld --install MySQL --defaults-file="C:\MySQL\my.ini"

powershell Start-Service mysql

ping localhost -t