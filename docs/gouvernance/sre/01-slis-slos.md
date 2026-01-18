# SLIs / SLOs

## Service SLIs
- Availability: good requests / total requests
- Latency: p95 (or p99) under threshold
- Errors: 5xx rate
- Saturation: CPU throttling, memory pressure

## Starter SLOs (lab)
| SLO | Target | Window |
|-----|--------|--------|
| Availability | 99.9% | 28d |
| Latency p95 | 99% < 300ms | 28d |
| 5xx error rate | <= 0.1% | 28d |

## Error budget
Error budget = 1 - SLO.
Example: 99.9% availability => 0.1% budget over 28d.
