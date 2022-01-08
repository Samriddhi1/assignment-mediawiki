mysql -u root -p
CREATE USER 'wiki'@'localhost' IDENTIFIED BY 'wikipassword';
CREATE DATABASE wikidatabase;
GRANT ALL PRIVILEGES ON wikidatabase.* TO 'wiki'@'localhost';
FLUSH PRIVILEGES;