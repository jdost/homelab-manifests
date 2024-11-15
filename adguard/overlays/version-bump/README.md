### Adguard Kustomization: Version Override

This just bumps the version for the deployed adguard container and the external-dns
provider.  This doesn't incorporate any config or other changes between releases, 
but is useful for managing upgrades without relying entirely on upstream (here) to 
dictate that.

External-DNS's version is tied to the upstream manifests, so bumping that requires
bumping the upstream ref (or just dropping the ref tying it to a tag).
