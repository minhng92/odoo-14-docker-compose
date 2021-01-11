#!/bin/bash
# completely delete/reset Odoo container & data
docker-compose down
rm -rf postgresql
rm -rf etc/addons
rm -rf etc/filestore
rm -rf etc/sessions
rm -rf etc/odoo-server.log
echo 'Odoo deleted!'
