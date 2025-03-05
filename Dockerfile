FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []


COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENV PORT=5000
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

CMD ["/entrypoint.sh"]