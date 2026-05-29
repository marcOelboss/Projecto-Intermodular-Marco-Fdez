#!/bin/bash

echo "LDAP:"
systemctl status slapd | head -n 5

echo "MYSQL:"
systemctl status mysql | head -n 5

echo "FIREWALL:"
sudo ufw status
