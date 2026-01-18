# SOC2 Control Matrix (Readiness)

| Category | Control Objective | Control | Where implemented | Evidence to capture |
|---------|-------------------|---------|-------------------|---------------------|
| Security | Change management | changes via PR + checks | CI workflows + PR process | PR approvals + checks + evidence artifact |
| Security | Access control | restrict merges | branch rules + CODEOWNERS | screenshot of rules + CODEOWNERS |
| Security | Vulnerability mgmt | detect/remediate vulns | Renovate + Trivy | scan artifact + Renovate PR |
| Security | Config hardening | block risky K8s configs | OPA/Conftest | conftest evidence output |
| Availability | Monitoring | golden signals dashboards | Grafana dashboards | dashboards screenshots |
| Availability | Alerting | SLO burn alerts + platform health | PrometheusRule / Grafana alerting | alert rules screenshot |
| Availability | Incident response | runbooks + postmortems | docs/governance/sre | completed postmortem |
| Availability | Recovery | rollback via GitOps | Argo CD history/rollback | history screenshot |
