#!/bin/sh
set -eu

envsubst < /templates/Atlas/datastore.xml \
  > /opt/geoserver_data/workspaces/validation/Atlas/datastore.xml

envsubst < /templates/Geodata/datastore.xml \
  > /opt/geoserver_data/workspaces/validation/Geodata/datastore.xml

envsubst < /templates/technical/datastore.xml \
  > /opt/geoserver_data/workspaces/public/technical/datastore.xml


#--
envsubst < /templates/global.xml \
  > /opt/geoserver_data/global.xml

envsubst < /templates/settings.xml \
  > /opt/geoserver_data/workspaces/shared/settings.xml

exec catalina.sh run