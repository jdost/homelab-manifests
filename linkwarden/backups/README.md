### LinkWarden Regular Backups

- **NOTE** Requires minio

This is an attempt to define a cronjob that will generate a linkwarde backup on a
regular schedule.  This is mainly just doing a pg_dump of the database, but 
linkwarden does store the archive parts for stored links in the attached PVC, which
required to `kubectl cp` the data directory over to include in the backup.

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
