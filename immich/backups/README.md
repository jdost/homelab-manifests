### Immich Regular Backups

- **NOTE** Requires minio

This is an attempt to define a cronjob that will generate an immich backup.  Immich
already does it's own version of this, so this may not be entirely necessary (these
backups are the same thing, just db dumps, they live in the `backups` folder on the
library PVC) but I like centralizing the backups for my apps and ensuring they are
stored somewhere.  Since I am expecting the PVC backup to be done on it's own, this
just preserves the DB contents.

This uses a general image I have defined under the top level `/backups` folder that
just provides a basic container image with some common binaries for interacting with
services and uploading to minio.

#### NOTES

- Needs to have rahsia credentials defined, these can be generated from the minio
  UI under the `access keys` section on the sidebar.  Then you need to create the
  `backups` bucket (this can also probably be made a variable).  The host in the
  secret should be the in cluster resolution (so like `minio.minio.svc.local:9001`).
- This just gets a backup into minio, you can see an example in the `/backups`
  folder for getting some retention of these off-site
- The frequency is every night (PST based), adjust as warranted
