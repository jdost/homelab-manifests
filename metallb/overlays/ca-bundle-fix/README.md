### MetalLB Kustomization: Patch perma-diff in CRD

When managing metallb via Argo, the upstream manifests have an embedded ca cert that
is used, which gets generated/updated upon deployment.  This causes a diff in the
deployment when managed by Argo, giving a signal that the deployment is out of date.
This is just an example overlay for how to patch that line with the deployed value.

#### NOTES

- The value in here is an example (it uses a clear placeholder payload), so modify
  it as needed.
