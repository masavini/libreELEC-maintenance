# libreELEC-maintenance

1. Remove backups older than 5 days
2. Remove kodi addons src packages from `/storage/.kodi/addons/packages/`
3. Run `fstrim -av`
4. Backup `/storage` dir

## Install

Login as root, then run:

```
cd /storage
wget 'https://raw.githubusercontent.com/masavini/libreELEC-maintenance/master/maintenance.sh'
chmod +x maintenance.sh

cd .config/system.d
wget 'https://raw.githubusercontent.com/masavini/libreELEC-maintenance/master/maintenance.service'
systemctl enable maintenance.service
```
