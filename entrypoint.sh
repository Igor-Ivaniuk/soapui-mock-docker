#!/bin/sh
echo "Starting Mock Service Runner"
if [[ -z "${SOAPUI_MOCK_SERVICE}" ]]; then
    exec /opt/SoapUI/bin/mockservicerunner.sh -m "${SOAPUI_MOCK_SERVICE}" ${SOAPUI_PROJECT}
else
    exec /opt/SoapUI/bin/mockservicerunner.sh ${SOAPUI_PROJECT}
fi