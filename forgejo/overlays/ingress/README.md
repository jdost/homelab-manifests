### Forgejo Kustomization: Ingress definition

Defines a general (non SSL) ingress and updates the configuration to default 
document this as the SSH endpoint (in the "clone via SSH" snippet).

#### NOTES

- For the homepage annotations, see the comments about changes you may want
- See the (not included in kustomization) `homepage-secrets-patch.yaml` for the
  example secret to include in homepage (see the `homepage/overlays/secrets` overlay
  for more information)
