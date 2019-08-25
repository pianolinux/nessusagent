#!/bin/bash
# Source environment variables
source /etc/environment

if [ -f /opt/nessus_agent/sbin/nessuscli ]; then
echo "[*-] registering agent..."
  /opt/nessus_agent/sbin/nessuscli agent link --key= --host=cloud.tenable.com --port=443 --groups='USB_AWS_Converge_Devices' 
  echo "[*-] systemctl restart nessusagent.service..."
  systemctl restart nessusagent.service
else
  echo '[*-] WARNING: The Nessus agent does not appear to be installed.'
  echo '             NO ACTION TAKEN.'
fi

