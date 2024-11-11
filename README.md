# Homelab k8s configs

This is the public side of my homelab k8s configs.  I don't include deployment
specific things (like DNS entries, IP blocks, etc) but do want to leave the majority
of the deployment definitions in here.

I am using kustomize based definitions and deploying via ArgoCD.  My actual targets
are a private repo where the targets inherit the base configs from here and add
any environment specific settings on top, example:

```yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

namespace: minio

resources:
- https://github.com/jdost/homelab-manifests//minio/base/?timeout=120
- ./ingress.yaml
```

I include example folders for some parts of these in the `overlays` folder under
some targets but with generic values where applicable.  I won't use namespaces in
any of the base configurations (unless there's some weird corner case) as it
simplifies overriding that in downstream kustomizations (it works normally for stuff
but the ClusterRoleBinding, by default, only applies namespace transforms to the
default namespace, so I keep the base stuff simple).

## Secrets

Since I don't want to define secrets (at all) in any committed manifests, I wrote up
an experimental controller application that creates a new CRD for defining wanted
secrets (named `SecretRequests`) that basically just declares the idea of a Secret
resource and the keys it contains but requires external definition of those secret
values, through a manual web UI.  I may re-visit this in the future if I ever get
to a point where I feel the need to use something more robust (like Vault) for
managing secrets, but this was at least an interesting project to explore some new
stuff with.

## Pattern/Structure

Each top level folder corresponds to an application/service.  Under each should be
a README.md documenting the service and including any general notes about it.  I
should state if I use the manifest or not (in some cases, since it is just pointing
at something upstream and everything I do is environmental customizations, there's
nothing for this to pull from).  The actual definition is under a `base` folder that
I reference in my environments.  The `overlays` folder gives cleaned examples of
things that I am doing in my environments (defining ingresses, modifying values,
etc).  But those are not used (and may be out of date if I am being sloppy).

### How I Use this

I have a private repo for every cluster.  This repo is similar to this with sub
directories for every application/target.  These will (often) reference to upstream
configurations in here and incorporate patches/resources like the examples in the
overlays folder.  I then have two files at the top level:
- `applicationset.yaml` - this defines a basic list of each sub directory to have
  argo generate applications for each, it is defined to point at the correct host
  for the repo.  Adding a new service entails just adding to the list in the spec
  and the corresponding folder in the repo.
- `application.yaml` - this is a self reference to the above `ApplicationSet`
  definition to have argo update itself when that file updates (minimizing the
  manual commands).
