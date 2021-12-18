#! /usr/bin/bash

BACKUP_DIR="/storage/backup"

find "${BACKUP_DIR}"/ \
    -name "*.tar" \
    -type f \
    -mtime +5 \
    -exec rm -f {} \;

rm -f /storage/.kodi/addons/packages/*

/usr/sbin/fstrim -av

DATE=$(date +%Y%m%d%H%M%S)

tar --create \
    --file "${BACKUP_DIR}/${DATE}".tar \
    --exclude=Thumbnails \
    --exclude=.thumbnails \
    /storage/.cache \
    /storage/.config \
    /storage/.fluxbox \
    /storage/.kodi \
    /storage/.ssh
