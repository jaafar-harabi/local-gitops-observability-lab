# local-gitops-observability-lab

A production-style local platform demo using **GitOps + modern observability**:

- Argo CD (App-of-Apps)
- Prometheus + Grafana (kube-prometheus-stack)
- Loki (logs)
- Tempo (traces)
- Grafana Alloy (modern collector/agent)
- OpenTelemetry (instrumentation + collector)

## Architecture

- Node API emits OTLP traces -> OTel Collector -> Tempo -> Grafana Explore
- Prometheus scrapes cluster metrics -> Grafana dashboards
- Loki stores logs -> Grafana Explore

## Prerequisites

- Docker
- kind
- kubectl
- git
- (optional) helm

## Setup (A to Z)

### 1) Create kind cluster
```bash
kind create cluster --name obs