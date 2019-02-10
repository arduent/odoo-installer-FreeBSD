#!/bin/sh

pg_dump -U postgres odoo > odoo.bak
sha1sum=`sha1 odoo.bak | awk '{print $4}'`
day=`date | awk '{print $3}'`
b2 upload-file --sha1 ${sha1sum} --noProgress odoo-db-backup odoo.bak ${day}-odoo.bak >> backuplog.txt

