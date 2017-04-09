#!/bin/sh

# Start postgres deamon
/etc/init.d/postgresql start

# Create `root` user in postgresql
sudo -u postgres sh -c 'createuser root & createdb root'

# Give root `user` priviliges to create databases
sudo -u postgres psql -c 'alter user root with createdb' postgres
