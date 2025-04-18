# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads-stage/mmorhun-tenant/component1-nudging:tag@sha256:755eca45580f5062fa73d35be0182cdf1a0ab3b123f9c20c3aa18e6af5999796 AS source

FROM python:3.13-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
