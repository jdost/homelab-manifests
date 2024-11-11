### Forgejo Kustomization: Change runner count

This just patches the runner deployment to vary the number of available runners.
This is probably something you want depending on the size of your cluster and the
available idle resources you want to dedicate for higher build parallelization.
