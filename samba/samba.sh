#!/bin/sh

samba_password=${SAMBA_PASSWORD:-samba}
echo -ne "$samba_password\n$samba_password\n" | smbpasswd -a samba

exec smbd "$@" </dev/null
