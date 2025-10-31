FROM n8nio/n8n:latest
# Wrapper so Render's $PORT is respected by n8n
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]
