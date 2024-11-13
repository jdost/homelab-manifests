## Application: Prometheus

- [Operator Docs](https://prometheus-operator.dev/docs/getting-started/introduction/)
- This is a two pass (plus exporters) setup, operator needs to be installed on it's
  own to get the CRDs and run server-side, then everything else

To set this up, install the operator on it's own, then install everything else (they
need/expect the CRD to be available and the controller to be running to see the new
resources get defined).  I make the assumption that everything installed here is the
only instance (I don't plan on running multiple Prometheus instances in my homelab).


### NOTES

- To install the operator, do it on it's own with the `--server-side` flag, i.e.:
  `kubectl apply -k operator/ --server-side`
- After the initial install of the operator, check the log output of the pod, if you
  see messages about resources not existing, run a `kubectl rollout restart 
  deployment` against it, weird race condition for the CRD and controller
- The install for `exporters/metrics-adapter` requires a manual apply:
    `kubectl apply -f exporters/metrics-adapter/role.yaml`
  This wants the `kube-system` namespace and kustomize just hates the idea of mixing
  namespaces in a target
