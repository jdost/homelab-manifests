### AdGuard Kustomization: SSL Support

Example of defining an ingress so that cert-manager generates a cert and then how to
mount that cert into the pod so you can reference it for SSL DNS options (as 
configured under `Settings` > `Encryption`).  This does require manually setting
the path and enabling (adguard doesn't have any env-based configuration, and I 
haven't wanted to come up with some weird conf file merging pattern via an init
container).


#### NOTES

- Requires that there be a `cert-manager` issuer available, update the ingress
  annotation from the example to point at the appropriate issuer
