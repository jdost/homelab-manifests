## Application: Grafana

- [Operator Docs](https://grafana.github.io/grafana-operator/docs/)
- This is a two pass setup, operator needs to be installed on it's own to get the 
  CRDs and run server-side, then everything else

To set this up, install the operator on it's own, then install the application.  In
order to fill in the application, you can either try and manually do it via the web
UI (this will get wiped on any restart) or refer to other places where I document
overlays for declaring dashboards and datasources.

### NOTES

- To install the operator, do it on it's own with the `--server-side` flag, i.e.:
  `kubectl apply -k operator/ --server-side`
