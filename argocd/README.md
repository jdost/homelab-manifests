## Application: ArgoCD

- [General Docs](https://argo-cd.readthedocs.io/en/stable/getting_started/)
- **NOTE** I don't deploy from this (since it's just using the upstream manifests),
  this is just to document various things that I have upstream
- This gets manually installed first to ensure argo is available to manage CD stuff
  going forward

Continuous deployment management service used to automate deployments of other
services.  This is heavily driven by the upstream manifest and just extended/patched
as needed.

### NOTES

- The top level just wraps the upstream manifest, see the overlays for various
  things that you can do for modifying the deployment
