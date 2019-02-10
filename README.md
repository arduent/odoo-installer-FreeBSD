odoo 12.0 installer for FreeBSD 12.0

Copyright 2019 Arduent Centisi LLC - Waitman Gobble <waitman@arduent.com>

WIP 
NEW INSTALL ONLY
MAY WIPE OUT OR MESS UP YOUR EXISTING INSTALL

packages built for FreeBSD 12.0-RELEASE-p2 GENERIC  amd64

prerequisites:

```
/etc/make.conf: DEFAULT_VERSIONS+= python=3.7 pgsql=11

install these ports:
/usr/ports/ports-mgmt/pkg
/usr/ports/security/ca_root_nss

# mkdir -p /usr/local/etc/pkg/repos/
```

to use python3 packages, copy custom.conf to /usr/local/etc/pkg/repos/custom.conf
and update pkg:

```
# pkg update -f
```

to use init script, copy contents of odoo directory to /home/odoo, ie:

```
# chown -R odoo:odoo odoo
# cd odoo
# cp -a . /home/odoo
```

B2 BackBlaze backup
install packages using install-b2.sh
get your accountid/keyid and application id from backblaze.com

authorize and create a bucket:

```
# b2 authorize-account [<accountIdOrKeyId>] [<applicationKey>]
# b2 create-bucket --lifecycleRules '[{"daysFromHidingToDeleting": 30,"daysFromUploadingToHiding": null,"fileNamePrefix": "backup/"}]' odoo-db-backup allPrivate
```

Run the b2-backup.sh using cron, hourly recommended. NOTE: the retention settings are 30 days. The backup script will create a new file each day. So, there will be 24*31 files.  (Adjust to your needs).


