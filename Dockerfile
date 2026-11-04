FROM docker.osgeo.org/geoserver:2.28.4

ENV DB_HOST=pladias_master
ENV DB_NAME=pladias
ENV DB_USER=geoserver
ENV DB_PASSWORD=geoserver
ENV PROXY_BASE_URL=http://localhost:8001/geoserver


RUN chown -R 1000:1000 /opt/geoserver_data  /usr/local/tomcat

USER 1000

COPY --chown=1000:1000 ./data /opt/geoserver_data
COPY --chown=1000:1000 ./templates /templates

COPY --chown=1000:1000 start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]