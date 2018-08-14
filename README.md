# SoapUI Mock Services in Docker #

SoapUI in docker container, suitable to run mock services in your domain
Uses **SoapUI v5.4.0 Open Source**[https://www.soapui.org/downloads/latest-release.html]

Requires a SoapUI project file (XML), and a Mock Service name to run
Environment variables:
- SOAPUI_PROJECT - path to SoapUI project file, default: */opt/project.xml*
- SOAPUI_MOCK_SERVICE - *(optional)* Name of the Mock Service to start

Quickstart:
```
FROM vivisectorua/soapui-mock-docker:5.4.0

ADD <SoapUI project file> /opt/project.xml
```