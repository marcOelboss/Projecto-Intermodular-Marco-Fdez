#!/bin/bash

USUARIO=$1
UIDNUM=$2
CONTRASENA=$3

ldapadd -x -D cn=admin,dc=ice,dc=local -W <<EOF
dn: uid=$USUARIO,ou=users,dc=ice,dc=local
objectClass: inetOrgPerson
objectClass: posixAccount
objectClass: shadowAccount
cn: $USUARIO
sn: $USUARIO
uid: $USUARIO
uidNumber: $UIDNUM
gidNumber: $UIDNUM
homeDirectory: /home/$USUARIO
loginShell: /bin/bash
userPassword: $CONTRASENA
EOF

sudo mysql <<EOF
CREATE USER '$USUARIO'@'localhost' IDENTIFIED BY '$CONTRASENA';
GRANT ALL PRIVILEGES ON empresa.* TO '$USUARIO'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "Usuario creado: $USUARIO"
