#FROM jeanblanchard/busybox-java:7
FROM makuk66/docker-oracle-java7

MAINTAINER sieglst@googlemail.com / stefan.siegl@novatec-gmbh.de

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=9.6.0.0
### End for new Introscope version

RUN mkdir /root/xap

ENV EXT_JAVA_OPTIONS "-Dcom.gs.transport_protocol.lrmi.bind-port=10000-10100 -Dcom.gigaspaces.start.httpPort=9104 -Dcom.gigaspaces.system.registryPort=7102"
ENV NIC_ADDR "#local:ip#"
ENV LOOKUPGROUPS kobi

EXPOSE 10000-10100
EXPOSE 9104
EXPOSE 7102
EXPOSE 4174
EXPOSE 8099
EXPOSE 7000-7010

WORKDIR /opt/install

ADD EPAgent${INTROSCOPE_VERSION}unix.tar /opt/introscope-epagent
ADD IntroscopeEPAgent.properties /opt/introscope-epagent/epagent/
ADD readFilesytemSpace.sh /opt/introscope-epagent/epagent/epaplugins/readFilesytemSpace.sh
ADD startup.sh /opt/install/startup.sh

RUN chmod +x startup.sh
RUN chmod +x /opt/introscope-epagent/epagent/epaplugins/readFilesytemSpace.sh



CMD /opt/install/startup.sh
