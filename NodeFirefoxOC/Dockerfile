FROM selenium/node-firefox

USER root

COPY fix-permissions.sh /fix-permissions.sh
RUN chmod +x /fix-permissions.sh \
  && /fix-permissions.sh /opt/selenium \
  && /fix-permissions.sh /opt/bin

