# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads-stage/mmorhun-tenant/component1-nudging:tag@sha256:0ac944ecf84a43bc985645a73aa082b513fb7b36a069f2a95ed695c915a868cc AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
