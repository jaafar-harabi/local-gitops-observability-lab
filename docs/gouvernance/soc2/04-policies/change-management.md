# Change Management Policy

## Requirements
- All infra/app changes via PR or reviewed commit
- CI checks must pass before merge
- Rollback plan required for risky changes
- Production-style: use Argo CD rollback or git revert

## Evidence
- PR showing checks + approval
- Argo CD history showing rollback capability
