#!/bin/bash

# API keys (replace with your own keys)
VT_API_KEY="98268b8178fc4579701919aa2251aa025e00df1e3bb2c4f186b8e915958d576c"

# Function to fetch IP addresses from VirusTotal
fetch_vt_ips() {
    local domain=$1
    curl -s "https://www.virustotal.com/vtapi/v2/domain/report?domain=$domain&apikey=$VT_API_KEY" \
    | jq -r '.. | .ip_address? // empty' \
    | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'
}

# Function to fetch IP addresses from AlienVault
fetch_otx_ips() {
    local domain=$1
    curl -s "https://otx.alienvault.com/api/v1/indicators/hostname/$domain/url_list?limit=500&page=1" \
    | jq -r '..url_list|.[].result?.urlworker?.ip // empty' \
    | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'
}

# Check if domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain_name_or_url>"
    exit 1
fi

DOMAIN=$1
OUTPUT_FILE="${DOMAIN}_ips.txt"

# Get IPs from both sources, remove duplicates, and save to file
echo "Collecting IP addresses for: $DOMAIN"
{
    fetch_vt_ips $DOMAIN
    fetch_otx_ips $DOMAIN
} | sort -u | tee "$OUTPUT_FILE"

echo "-----------------------------------"
echo "IP addresses saved to: $OUTPUT_FILE"
