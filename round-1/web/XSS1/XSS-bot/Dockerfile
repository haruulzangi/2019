FROM wernight/phantomjs:2.0

COPY --chown=phantomjs ./src /app
WORKDIR /app
RUN ls -lah /app/ && \
    cd /app && \
    chmod +x ./auto.sh

ENTRYPOINT ["./auto.sh"]
