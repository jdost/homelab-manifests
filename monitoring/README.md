## Application Stack: Monitoring

- This is heavily cribbed from [kube-prometheus](https://github.com/prometheus-operator/kube-prometheus/tree/main/manifests)
  and mostly is an attempt to clean some parts up and add some other things I like

This is the prometheus+grafana+alertmanager stack plus cluster exporters for 
prometheus.  This is heavily based on the `kube-prometheus` project, which is built
on the `prometheus-operator` and then defines within that operator plus some common
exporters and stuff.  Originally, I tried to work off that but got annoyed with
some aspects (see the NOTES below).  This breaks the manifests that incorporates 
into parts and points at each.

### NOTES

- Because there are two operators involved, they need to be installed server-side,
  see each sub component's README for details
- `kube-prometheus` likes to use network policies, which are probably desirable in
  a production setting, but for my homelab, I opted to minimize complexity there
- Trimmed a number of things and simplified a number of others, but generally 
  everything is cribbed from the upstream project, just couldn't easily upstream it
  within kustomize and didn't feel like figuring out jsonnet
