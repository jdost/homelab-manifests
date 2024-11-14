### Forgejo Kustomization: Version Override

This just bumps the version for the deployed forgejo container.  This doesn't 
incorporate any config or other changes between releases, but is useful for managing
upgrades without relying entirely on upstream (here) to dictate that.

#### NOTES

- There are examples of patching version bumps for both the service and the runners
- The runners also shows bumping the dockerd container
