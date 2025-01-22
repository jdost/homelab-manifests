## Controller: Redis

- [General Docs](https://ot-container-kit.github.io/redis-operator/guide/)
- This is a controller/CRD to provide redis deployments in the cluster

Provides a CRD+Controller to allow for declaring a redis resource.  I only am using
standalone deployments (as my needs aren't around high throughput and uptime).  This
is *based* on the helm chart from the docs since the kustomize offerings are severely
out of date and follow bad patterns (hard coded namespaces).  I just generated the
manifests from helm, then cleaned them up for kustomize use.  Maintaining this will
be an annoyance going forward, but I will re-assess (may try and upstream this).

### NOTES

- Redis use in my cluster is more ephemeral (as a message broker), so I haven't
  spent effort on worrying about resiliency or recovery.
