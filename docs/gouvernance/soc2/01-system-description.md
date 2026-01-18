# System Description (SOC2)

## Purpose
A production-style local lab to demonstrate:
- controlled change (GitOps)
- monitored operations (observability)
- security and availability controls as code

## Change lifecycle
1) Change via PR/commit
2) CI: policy checks + security scans + evidence pack
3) Merge
4) Argo CD reconciles cluster to desired state
5) Observability collects telemetry; alerts trigger runbooks and incident process

## Data
- Metrics, logs, traces generated in the lab
- Evidence artifacts produced by CI
