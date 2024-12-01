### Mealie Regular Backups

- [Backup Docs](https://docs.mealie.io/documentation/getting-started/usage/backups-and-restoring/)
- **NOTE** Requires minio

This is an attempt to define a cronjob that will generate a mealie backup on a
regular schedule.  This uses the mealie backup API endpoints (see docs) to generate
a zip on the server side, and then pull it down over the API.

This uses a general image I have defined under the top level `/backups` folder that
just provides a basic container image with some common binaries for interacting with
services and uploading to minio.

#### NOTES

- Needs to have rahsia credentials defined, these can be generated from the minio
  UI under the `access keys` section on the sidebar.  Then you need to create the
  `backups` bucket (this can also probably be made a variable).  The host in the
  secret should be the in cluster resolution (so like `minio.minio:9001`).
- This just gets a backup into minio, you can see an example in the `/backups`
  folder for getting some retention of these off-site
- The frequency is every night (PST based), adjust as warranted
