# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads-stage/mmorhun-tenant/component1-nudging:tag@sha256:3f15244971b06ccb08af6ccbf88aba1722e6ee1b567acfe0f24c713136251508 AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
