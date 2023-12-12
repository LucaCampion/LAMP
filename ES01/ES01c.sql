cd mysql
mysqldump -u root biblioteca > biblioteca_v10_011223.sql
mysql -u root

drop database biblioteca;
create database biblioteca;
exit;

mysql -u root biblioteca < biblioteca_v10_011223.sql
mysql -u root

use biblioteca;
show tables;
select * from libri;