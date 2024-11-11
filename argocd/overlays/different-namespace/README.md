### Argo Kustomization: Different Namespace

Because of how kustomization handles namespaces on service accounts, since the
upstream manifest doesn't use `default` namespaces, the normal namespace transformer
won't apply the namespace to the role binding (and therefore doesn't give the
necessary permissions).

See the `kustomization.yaml` file, you can set the desired namespace in the 
tranformer block (I have it as `argo-example` in the example).
