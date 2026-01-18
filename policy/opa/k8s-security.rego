package k8s.security

deny[msg] {
  c := containers(input)[_]
  c.securityContext.privileged == true
  msg := sprintf("Privileged container not allowed: %s", [c.name])
}

deny[msg] {
  c := containers(input)[_]
  endswith(c.image, ":latest")
  msg := sprintf("Image tag ':latest' not allowed: %s", [c.image])
}

deny[msg] {
  c := containers(input)[_]
  c.securityContext.runAsNonRoot != true
  msg := sprintf("runAsNonRoot required for container: %s", [c.name])
}

containers(obj) = cs {
  obj.kind == "Pod"
  cs := obj.spec.containers
}
containers(obj) = cs {
  obj.kind != "Pod"
  cs := obj.spec.template.spec.containers
}
