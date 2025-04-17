# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads-stage/mmorhun-tenant/component1-nudging:tag@sha256:472680e688222d8b82466034e95d5aad85b8021cca5eee2f33f2353666b7b7f8 AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
