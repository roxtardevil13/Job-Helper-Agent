FROM n8nio/n8n:latest
# Make sure n8n listens on Render's $PORT
ENTRYPOINT ["/bin/sh","-lc","export N8N_PORT=${PORT:-5678}; exec /docker-entrypoint.sh start"]
