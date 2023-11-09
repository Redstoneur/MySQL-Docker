# Base de données - Start
# todo : changer le nom de la base de données en fonction de la config | default => database: your_database_name
DROP DATABASE IF EXISTS your_database_name;
CREATE DATABASE IF NOT EXISTS your_database_name;
USE your_database_name;
# Base de données - End

# Dump de la base de données - Start
# todo : Mettre le dump de la base de données ci-dessous

# Dump de la base de données - End

# Ajout des privilèges - Start
# todo : changer l'utilisateur en fontion de la config | default => user: your_mysql_user, password: your_mysql_password , database: your_database_name
GRANT ALL PRIVILEGES ON your_database_name.* TO 'your_mysql_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
# Ajout des privilèges - End


