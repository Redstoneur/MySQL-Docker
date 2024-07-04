## MySQL-Docker

---

![License](https://img.shields.io/github/license/Redstoneur/MySQL-Docker)
![Top Language](https://img.shields.io/github/languages/top/Redstoneur/MySQL-Docker)
![Size](https://img.shields.io/github/repo-size/Redstoneur/MySQL-Docker)
![Contributors](https://img.shields.io/github/contributors/Redstoneur/MySQL-Docker)
![Last Commit](https://img.shields.io/github/last-commit/Redstoneur/MySQL-Docker)
![Issues](https://img.shields.io/github/issues/Redstoneur/MySQL-Docker)
![Pull Requests](https://img.shields.io/github/issues-pr/Redstoneur/MySQL-Docker)

---

![Forks](https://img.shields.io/github/forks/Redstoneur/MySQL-Docker)
![Stars](https://img.shields.io/github/stars/Redstoneur/MySQL-Docker)
![Watchers](https://img.shields.io/github/watchers/Redstoneur/MySQL-Docker)

---

![Latest Release](https://img.shields.io/github/v/release/Redstoneur/MySQL-Docker)
![Release Date](https://img.shields.io/github/release-date/Redstoneur/MySQL-Docker)
![Build Status](https://img.shields.io/github/actions/workflow/status/Redstoneur/MySQL-Docker/docker-compose-test.yml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/ce53daf0f4d64d4eaffc2fcf810c07bf)](https://app.codacy.com/gh/Redstoneur/MySQL-Docker/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

Bienvenue dans le repo MySQL-Docker ! Ici, tu trouveras tout ce dont tu as besoin pour déployer rapidement un
environnement MySQL avec Docker, y compris la possibilité d'importer un `Dump SQL initial`.

### Instructions d'utilisation

1. Clone le repo sur ta machine locale.

    ```bash
    git clone https://github.com/Redstoneur/MySQL-Docker.git MySQL-Docker
    cd MySQL-Docker
    ```

2. Modifie le fichier [`docker-compose.yaml`](./docker-compose.yaml) selon tes besoins. Assure-toi de changer les mots
   de passe par défaut dans la section `environment` pour renforcer la sécurité.

   > voir [`docker-compose.yaml`](./docker-compose.yaml) pour plus d'informations sur la configuration.

    ```yaml
    # Extrait du fichier docker-compose.yaml (container mysql)
    # ...
    environment:
      MYSQL_ROOT_PASSWORD: ton_mot_de_passe_root # todo: change root password
      MYSQL_DATABASE: ton_nom_de_base_de_donnees # todo: change database name
      MYSQL_USER: ton_utilisateur_mysql # todo: change user name
      MYSQL_PASSWORD: ton_mot_de_passe_mysql # todo: change user password
    # ...
    ```

    ```yaml
    # Extrait du fichier docker-compose.yaml (container phpmyadmin)
    # ...
    environment:
      MYSQL_ROOT_PASSWORD: your_root_password # todo: change root password
    # ...
    ```

3. Modifie le fichier [`dump.sql`](./dump.sql) avec le contenu de ton `Dump SQL`. Assure-toi également de mettre à jour
   le nom de la base de données dans le script.

   > voir [`dump.sql`](./dump.sql) pour configurer le `Dump SQL`.

    ```sql
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
    # todo : changer l'utilisateur en fonction de la config | default => user: your_mysql_user, password: your_mysql_password , database: your_database_name
    GRANT ALL PRIVILEGES ON your_database_name.* TO 'your_mysql_user'@'%' WITH GRANT OPTION;
    FLUSH PRIVILEGES;
    # Ajout des privilèges - End
    ```

4. Démarre les services MySQL et PHPMyAdmin en utilisant la commande suivante :

   > voir [docs.docker.com](https://docs.docker.com/) pour plus d'informations sur Docker et Docker Compose.

    ```bash
    docker-compose up -d
    ```

### Accès

- **MySQL Database:**
    - Host: `localhost`
    - Port: `3306`
    - Username: `ton_utilisateur_mysql`
    - Password: `ton_mot_de_passe_mysql`

- **PHPMyAdmin:**
    - URL: [`http://localhost:8080`](http://localhost:8080)
    - Username: `root`
    - Password: `ton_mot_de_passe_root`

### Remarques

- Assure-toi que les ports `3306` et `8080` sur ta machine ne sont pas utilisés par d'autres applications.
- N'oublie pas de sécuriser tes mots de passe et informations sensibles.

Profite bien de ton environnement MySQL-Docker ! Si tu as des questions ou des problèmes, n'hésite pas à les partager
ici.