# Apache-PHP-MariaDB
 Ennesima immagine di Apache PHP MariaDB.
 La realizzazione di questa nuova immagine è dovuta a scopi formativi; è da intendersi per utilizzo di test e non per sistemi in produzione.
 


# Configurazione
Scaricare la repo con GIT o effettuare il download dei file: inserire i file dell'applicazione web all'interno della cartella "app".
Possibile inserire dump.sql all'interno della cartella "db" per importare tabelle MariaDB/MySQL da un'altra installazione.

## Docker Compose

Gestire l'immagine con docker-composer -> docker-compose -f "docker-compose.yml" up -d --build

Attendere qualche istante (o minuto in base alle risorse a disposizione)

## Dockerfile / Immagine

Rimane comunque possibile realzizare un'unica immagine con tutto lo stack all'interno: per quanto questo sia sconsigliato come approccio ai container, rimane comunque molto pratico per motivi di test.

Ecco comunque il link per l'immagine su Docker Hub [https://hub.docker.com/r/francescozanti/apache-php-mariadb](https://hub.docker.com/r/francescozanti/apache-php-mariadb) .

# OS (con Docker Desktop)

Win10 2004;

MacOS Catalina

