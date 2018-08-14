#!/bin/sh
echo "Starting Mock Service Runner"
exec /opt/SoapUI/bin/mockservicerunner.sh -m "${MOCK_SERVICE}" ${SOAPUI_PROJECT}