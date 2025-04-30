# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads-stage/mmorhun-tenant/component1-nudging:tag@sha256:2e762ca1fcfef201c291faa21a0eca653e1ac51d4db8e8a09f4c1ab8be1cd5b9 AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
