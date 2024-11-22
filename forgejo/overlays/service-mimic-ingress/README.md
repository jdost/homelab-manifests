### Forgejo Kustomization: Service DNS mimic Ingress

For some development patterns, you may want to test locally stuff that will run in
cluster.  For the DNS situation (with something like argo) where you want stuff to
refer to the internal service DNS (i.e. `forgejo.namespace`), this is an example of
how to declare the ingress definition so HTTP requests to the same DNS will resolve
externally as internally.

#### NOTES

- This tells external-dns to not expose the DNS entry, this is mostly to minimize
  the scope of this change (since it's just for testing)
- You instead will need to update your local lookup (i.e. `/etc/hosts`) to point to
  this DNS at the exposed IP
- I manually maintain this file and apply/delete against it directly
