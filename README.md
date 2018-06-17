Docker Contao
===

A Docker Compose setup for Contao Open Source CMS

Quick Start
---

```
docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=mypass -e MYSQL_DATABASE=contao mysql
docker run -d --name contao -p 80:80 --link mysql:mysql medialta/docker-contao
```

--or--

```
docker-compose up -d
```

Point your browser to `http://127.0.0.1`

Contao Installation
---

Once you're up and running, you'll arrive at the configuration wizard page. At the `Database connection` step, please enter the following:

- Host: `mysql`
- Login: `root`
- Password: `mypass`
- Database Name: `contao`

Contao Demo
---

* The install tool password for the demo is contaodocker

Contao Manager
---
This setup also provides the Contao Manager. You can access it via calling http://127.0.0.1/contao-manager.php

License
---

MIT

Special Thanks
--------------

Medialta https://github.com/medialta/docker-contao
Comolo https://github.com/comolo/contao-docker
CTSMEDIA https://github.com/ctsmedia/docker-contao

