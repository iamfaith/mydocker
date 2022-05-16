#!/bin/bash

alias cp="cp"
echo "start service"

ls /etc/supervisor/conf.d
cp -rf /opt/supervisord/*.conf /etc/supervisor/conf.d

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
