# FROM xianzixiang/octoprint:1.0
FROM xianzixiang/klipper:2.0


USER root


ADD ./container /opt

# RUN cd /opt && ./install_klipper.sh

RUN wget "https://gitee.com/aifaith/images/raw/master/plugin/OctoPrint-Creality2xTemperatureReportingFix-master.zip" && \
    /usr/local/bin/pip3 install OctoPrint-Creality2xTemperatureReportingFix-master.zip && \
wget "https://gitee.com/aifaith/images/raw/master/plugin/OctoPrint-DisplayLayerProgress.zip" && \
/usr/local/bin/pip3 install OctoPrint-DisplayLayerProgress.zip && \
/usr/local/bin/pip3 install "https://github.com/crealitycloud/OctoPrint-CrealityCloud-With-Video/archive/master.zip"

# wget "https://gitee.com/aifaith/images/raw/master/plugin/creality.zip" && \
# /usr/local/bin/pip3 install creality.zip