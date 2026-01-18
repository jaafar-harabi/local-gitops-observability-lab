package k8s.reliability

deny[msg] {
  c := containers(input)[_]
  not c.resources.requests
  msg := sprintf("Resource requests missing: %s", [c.name])
}

deny[msg] {
  c := containers(input)[_]
  not c.resources.limits
  msg := sprintf("Resource limits missing: %s", [c.name])
}

deny[msg] {
  c := containers(input)[_]
  not c.readinessProbe
  msg := sprintf("readinessProbe missing: %s", [c.name])
}

deny[msg] {
  c := containers(input)[_]
  not c.livenessProbe
  msg := sprintf("livenessProbe missing: %s", [c.name])
}

containers(obj) = cs {
  obj.kind == "Pod"
  cs := obj.spec.containers
}
containers(obj) = cs {
  obj.kind != "Pod"
  cs := obj.spec.template.spec.containers
}
