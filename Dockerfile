FROM dimakazankov/mysqlwincontainer

COPY my.ini C:/MySQL/
COPY initmysql.cmd C:/

VOLUME C:\\MySQL\\data

EXPOSE 3306

ENTRYPOINT ["C:\\initmysql.cmd"]