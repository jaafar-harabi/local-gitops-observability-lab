#!/usr/bin/env bash
set -euo pipefail

OUT="${1:-docs/governance/reports/SRE-Reliability-Report.generated.md}"
NOW="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

cat > "$OUT" << EOF
# SRE Reliability Report (Generated)

Generated: ${NOW}

## Service Overview
See: docs/governance/sre/00-service-overview.md

## SLIs/SLOs
See: docs/governance/sre/01-slis-slos.md

## Alerting Policy
See: docs/governance/sre/02-alerting-policy.md

## Runbooks
See: docs/governance/sre/03-runbooks/

## Evidence (UI Captures)
- Grafana dashboards (golden signals + SLO/error budget + k8s health)
- Grafana alert rules list + fired alert example
- Argo CD synced/healthy + diff + history

## Incidents / Postmortems
- docs/governance/sre/05-postmortems/
EOF

echo "Generated: $OUT"
