FROM alpine:latest as certs
RUN apk --update add ca-certificates
FROM scratch
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY * ./
COPY config.env ./
COPY *.crt ./
COPY *.key ./
EXPOSE 4003/tcp
EXPOSE 5003/tcp
ENTRYPOINT ["/aws-step-shipment-service"]