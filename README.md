## MySQL-Docker

Bienvenue dans le repo MySQL-Docker! Ici, tu trouveras tout ce dont tu as besoin pour déployer rapidement un environnement MySQL avec Docker.

### Instructions d'utilisation

1. Clone le repo sur ta machine locale.

```bash
git clone https://github.com/Redstoneur/MySQL-Docker.git
```

2. Modifie le fichier `docker-compose.yaml` selon tes besoins. Assure-toi de changer les mots de passe par défaut dans la section `environment` pour renforcer la sécurité.

```yaml
# Extrait du fichier docker-compose.yaml (container mysql)
...
environment:
  MYSQL_ROOT_PASSWORD: ton_mot_de_passe_root # todo: change root password
  MYSQL_DATABASE: ton_nom_de_base_de_donnees # todo: change database name
  MYSQL_USER: ton_utilisateur_mysql # todo: change user name
  MYSQL_PASSWORD: ton_mot_de_passe_mysql # todo: change user password
...
```
```yaml
# Extrait du fichier docker-compose.yaml (container phpmyadmin)
...
environment:
  MYSQL_ROOT_PASSWORD: your_root_password # todo: change root password
...
```


3. Démarre les services MySQL et PHPMyAdmin en utilisant la commande suivante:

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
    - [http://localhost:8080](http://localhost:8080)
    - Username: `root`
    - Password: `ton_mot_de_passe_root`

### Remarques

- Assure-toi que les ports `3306` et `8080` sur ta machine ne sont pas utilisés par d'autres applications.
- N'oublie pas de sécuriser tes mots de passe et informations sensibles.

Profite bien de ton environnement MySQL-Docker! Si tu as des questions ou des problèmes, n'hésite pas à les partager ici.