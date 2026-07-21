FROM docker.osgeo.org/geoserver:2.28.4

ENV RUN_UNPRIVILEGED=false
ENV RUN_WITH_USER_UID=1000
ENV RUN_WITH_USER_GID=1000
ENV CHANGE_OWNERSHIP_ON_FOLDERS=false

RUN chown -R ubuntu:ubuntu /opt/geoserver_data /usr/local/tomcat

USER ubuntu

COPY --chown=ubuntu:ubuntu ./data /opt/geoserver_data
