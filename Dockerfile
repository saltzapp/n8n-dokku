FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []


COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 5000
ENV PORT=5000
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

ENV N8N_ENCRYPTION_KEY=some-very-@interesting^key
ENV WEBHOOK_URL=https://n8n.dokku.saltz.cloud
ENV GENERIC_TIMEZONE=Europe/Vilnius

CMD ["/entrypoint.sh"]