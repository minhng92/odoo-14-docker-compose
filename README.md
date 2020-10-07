# Usage

Change the folder permission to make sure that the container is able to access the directory:
``` sh
$ sudo chmod -R 777 addons
$ sudo chmod -R 777 etc
```

Increase maximum number of files watching if you catch the error `OSError: inotify watch limit reached` with Odoo 14:
``` sh
$ sudo sysctl fs.inotify.max_user_watches=500000
```

Start the container:
``` sh
$ docker-compose up
```

* Then open `localhost:10014` to access Odoo 14.0. If you want to start the server with a different port, change **10014** to another value in **docker-compose.yml**:

```
ports:
 - "10014:8069"
```

* Log file is printed @ **etc/odoo-server.log**

To run in detached mode, execute this command:

```
$ docker-compose up -d
```

# Custom addons

The **addons/** folder contains custom addons. Just put your custom addons if you have any.

# Odoo configuration

* To change Odoo configuration, edit file: **etc/odoo.conf**.

``` conf
[options]
addons_path = /mnt/extra-addons
data_dir = /etc/odoo
logfile = /etc/odoo/odoo-server.log
admin_passwd = minhng.info
```

* Default database password (**admin_passwd**) is `minhng.info`, please change it.

# docker-compose.yml

* odoo:14.0
* postgres:13

# Odoo 14 screenshots

![odoo-14-welcome-docker](screenshots/odoo-14-welcome-screenshot.png)

![odoo-14-apps-docker](screenshots/odoo-14-apps-screenshot.png)

![odoo-14-sales](screenshots/odoo-14-sales-screen.png)

![odoo-14-form](screenshots/odoo-14-sales-form.png)