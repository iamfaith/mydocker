#!/bin/bash

/root/miniconda3/envs/klippy_py/bin/pip install  -r /root/klipper/scripts/klippy-requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

/root/miniconda3/envs/moonraker_py/bin/pip install -r /root/moonraker/scripts/moonraker-requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple


alias cp="cp"
echo "start service"

ls /etc/supervisor/conf.d
cp -rf /opt/supervisord/*.conf /etc/supervisor/conf.d

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
