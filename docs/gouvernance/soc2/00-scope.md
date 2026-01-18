# SOC2 Scope (Readiness)

This repository demonstrates SOC2 readiness-style controls for a GitOps + Observability platform.

## In-scope system
- Git repository + CI workflows
- GitOps deployment (Argo CD App-of-Apps)
- Kubernetes cluster (kind/local)
- Observability: Prometheus/Grafana, Loki, Tempo
- Telemetry pipeline: Grafana Alloy + OpenTelemetry collector
- Node API service

## Out of scope
- Real customer data
- Production SLAs
- External SSO/IdP unless configured

## Trust Services Categories
Targeted:
- Security (required)
- Availability (recommended)
