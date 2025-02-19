FROM alpine:latest

# Install curl (required for API requests)
RUN apk add --no-cache curl

WORKDIR /app

COPY burp_uploader.sh /app/burp_uploader.sh

# Ensure the script has execute permissions
RUN chmod +x /app/burp_uploader.sh

ENTRYPOINT ["/app/burp_uploader.sh"]
