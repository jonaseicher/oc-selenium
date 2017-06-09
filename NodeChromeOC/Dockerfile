FROM selenium/node-chrome

USER root

COPY fix-permissions.sh /fix-permissions.sh
RUN chmod +x /fix-permissions.sh \
  && /fix-permissions.sh /opt/selenium \
  && /fix-permissions.sh /opt/bin

# https://github.com/SeleniumHQ/docker-selenium/issues/392#issuecomment-290286539
ENV JAVA_OPTS -Xmx3G
ENV LOGSPOUT ignore
ENV shm_size 512MB
ENV DBUS_SESSION_BUS_ADDRESS /dev/null

VOLUME /dev/shm
