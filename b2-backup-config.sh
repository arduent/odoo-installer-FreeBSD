#!/bin/sh

tar -c -J -f odoo-file.tar.xz /home/odoo/odoo.conf
sha1sum=`sha1 odoo-file.tar.xz | awk '{print $4}'`
b2 upload-file --sha1 ${sha1sum} --noProgress odoo-db-backup odoo-file.tar.xz odoo-file.tar.xz >> backuplog.txt


