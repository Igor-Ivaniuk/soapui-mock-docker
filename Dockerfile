FROM openjdk:8-jre-alpine
LABEL maintainer="Igor Ivaniuk <i.ivanyuk@gmail.com>"
LABEL GitHub="https://github.com/Igor-Ivaniuk/soapui-mock-docker"

#  Version
ENV SOAPUI_VERSION  5.4.0

# Download and unarchive SoapUI
RUN mkdir -p /opt &&\
    wget -O-  https://s3.amazonaws.com/downloads.eviware/soapuios/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz \
    | gunzip -c - | tar -xf - -C /opt && \
    ln -s /opt/SoapUI-${SOAPUI_VERSION} /opt/SoapUI

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

# Set working directory
WORKDIR /opt

# Set environment
ENV SOAPUI_PROJECT /opt/project.xml

EXPOSE 8089

CMD ["/opt/entrypoint.sh"]