#!/bin/bash

# Ensure required variables are set
if [[ -z "$DEFECTDOJO_URL" || -z "$DD_API_KEY" || -z "$ENGAGEMENT_ID" || -z "$BURP_REPORT" ]]; then
  echo "Error: Missing required environment variables."
  exit 1
fi

# Check if the report file exists
if [[ ! -f "$BURP_REPORT" ]]; then
  echo "Error: File '$BURP_REPORT' not found."
  exit 1
fi

echo "Uploading Burp report: $BURP_REPORT"

# Upload the report using DefectDojo API
curl -X POST "$DEFECTDOJO_URL/api/v2/import-scan/" \
  -H "Authorization: Token $DD_API_KEY" \
  -H "Content-Type: multipart/form-data" \
  -F "scan_type=Burp Scan" \
  -F "file=@$BURP_REPORT" \
  -F "engagement=$ENGAGEMENT_ID" \
  -F "active=true" \
  -F "verified=true"

echo "Scan upload request sent for: $BURP_REPORT"
