FROM selenium/hub

USER root

COPY fix-permissions.sh /fix-permissions.sh
RUN chmod +x /fix-permissions.sh \
  && /fix-permissions.sh /opt/selenium \
  && /fix-permissions.sh /opt/bin

# https://github.com/SeleniumHQ/docker-selenium/issues/392#issuecomment-290286539
ENV GRID_BROWSER_TIMEOUT '180000'
ENV GRID_MAX_SESSION '10'
ENV LOGSPOUT ignore
ENV GRID_TIMEOUT '180000'

ENV JAVA_OPTS -Xmx1G
ENV LOGSPOUT ignore

VOLUME /dev/shm