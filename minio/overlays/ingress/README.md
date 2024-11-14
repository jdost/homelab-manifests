### Minio Kustomization: Ingress definition

Defines a general (non SSL) ingress, the API port is exposed via a loadbalancer, so
need to ensure the DNS resolves to the same for the loadbalancer and HTTP ingress.
