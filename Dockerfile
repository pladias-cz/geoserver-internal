FROM kartoza/geoserver:2.28.4

ENV TOMCAT_EXTRAS false
ENV ENABLE_JSONP true

COPY ./data /opt/geoserver/data_dir