# Risk Assessment

| Risk | Impact | Likelihood | Mitigation | Evidence |
|------|--------|------------|------------|----------|
| Unauthorized manifest change | High | Med | PR reviews + CODEOWNERS + CI checks | PR + checks screenshots |
| Secrets leaked in repo | High | Med | scanning + policy + education | scan artifacts |
| Vulnerable dependencies | Med | High | Renovate + scans | Renovate PRs + scan artifacts |
| No alerting/runbooks | High | Med | SLOs + burn-rate alerts + runbooks | Grafana + docs |
| Config drift | Med | Med | Argo CD reconciliation | Argo sync/health screenshots |
| Telemetry gaps | Med | Med | Alloy + OTel + dashboards | dashboards screenshots |
