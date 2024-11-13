### Argo Kustomization: Prometheus/Grafana Metrics

Adds scrape annotations to the argocd server to expose metrics for prometheus and
defines a grafana dashboard from the argo project.

**NOTE** The `grafanaDashboard.yaml` won't work if you don't have the 
grafana-operator installed.
