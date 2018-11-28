FROM dimakazankov/mysqlnanoserver

COPY my.ini C:/app/MySQL/
COPY initmysql.cmd C:/app/

VOLUME C:\\app\\MySQL\\data

EXPOSE 3306

ENTRYPOINT ["C:\\app\\initmysql.cmd"]
