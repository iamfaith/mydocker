#!/bin/bash

alias cp="cp"
echo "start service"

ls /etc/supervisor/conf.d
cp -rf /opt/supervisord/code.conf /etc/supervisor/conf.d


/torch/bin/python -m pip install aicmder==0.5.4

/usr/bin/supervisord -c /etc/supervisor/conf.d/code.conf
