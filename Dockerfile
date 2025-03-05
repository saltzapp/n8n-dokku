FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

ENV PORT=5000

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]