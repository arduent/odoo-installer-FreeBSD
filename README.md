odoo 12.0 installer for FreeBSD 12.0

Copyright 2019 Arduent Centisi LLC - Waitman Gobble <waitman@arduent.com>

WIP 
NEW INSTALL ONLY
MAY WIPE OUT OR MESS UP YOUR EXISTING INSTALL

packages built for FreeBSD 12.0-RELEASE-p2 GENERIC  amd64

prerequisites:

```
/usr/ports/ports-mgmt/pkg
/usr/ports/security/ca_root_nss

# mkdir -p /usr/local/etc/pkg/repos/
```

to use python3 packages, copy custom.conf to /usr/local/etc/pkg/repos/custom.conf
and update pkg:

```
# pkg update -f
```


to run odoo,

```
# ./odoo-bin --config=odoo.conf --addons-path=addons,altaddons,l10n-dominicana
```
