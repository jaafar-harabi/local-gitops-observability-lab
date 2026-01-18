#!/usr/bin/env bash
set -euo pipefail

OUT="${1:-docs/governance/reports/SOC2-Readiness-Report.generated.md}"
NOW="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

cat > "$OUT" << EOF
# SOC2 Readiness Report (Generated)

Generated: ${NOW}

## Scope
See: docs/governance/soc2/00-scope.md

## System Description
See: docs/governance/soc2/01-system-description.md

## Control Matrix
See: docs/governance/soc2/03-control-matrix.md

## Evidence Required (UI + CI)
See: docs/governance/evidence/EVIDENCE-CHECKLIST.md

## CI Evidence Artifacts
- compliance-evidence -> soc2-evidence artifact
- security-scan -> security-scan artifact

## Notes
- Attach screenshots from Argo CD + Grafana in docs/governance/evidence/screenshots/
- Attach CI artifacts links from GitHub Actions runs
EOF

echo "Generated: $OUT"
