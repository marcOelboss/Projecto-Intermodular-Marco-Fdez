#!/bin/bash

FECHA=$(date +%Y-%m-%d)

sudo tar -czvf /backup/sistema/backup_home_$FECHA.tar.gz /home

sudo mysqldump -u root empresa > /backup/mysql/backup_empresa_$FECHA.sql

echo "Backup realizado: $FECHA"