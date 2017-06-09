FROM selenium/node-chrome-debug

# we store the root env vars here so we can later use them in the entrypoint script as oc user 
# RUN env > /opt/bin/rootenv

# Copy customized entry_point.sh; Removed sudo's
COPY entry_point.sh /opt/bin/entry_point.sh 
RUN chmod +x /opt/bin/entry_point.sh

RUN mkdir -p /opt/selenium/.vnc \
  && x11vnc -storepasswd allianz /opt/selenium/.vnc/passwd

COPY fix-permissions.sh /fix-permissions.sh
RUN chmod +x /fix-permissions.sh \
  && /fix-permissions.sh /opt/selenium \
  && /fix-permissions.sh /opt/bin

ENV JAVA_OPTS -Xmx3G
ENV LOGSPOUT ignore
ENV shm_size 512MB
ENV DBUS_SESSION_BUS_ADDRESS /dev/null

VOLUME /dev/shm