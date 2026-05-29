#!/bin/bash

USUARIO=$1

ldapdelete -x -D "cn=admin,dc=ice,dc=local" -W \
"uid=$USUARIO,ou=users,dc=ice,dc=local"

sudo mysql <<EOF
DROP USER IF EXISTS '$USUARIO'@'localhost';
FLUSH PRIVILEGES;
EOF

sudo rm -rf /home/$USUARIO

echo "Usuario eliminado: $USUARIO"
