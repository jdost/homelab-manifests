## Application: Minio

- [General Docs](https://min.io/docs/minio/container/index.html)

A network S3 compatible object storage system.  This is a more generic deployment of 
Minio (they provide a controller, but for my homelab I don't think it warrants 
something heavy).  I use it for a variety of things, the original purpose was around
providing an internal object storage system to collect snapshots/backups for various
stateful applications to simplify recovery and tool backups of those.

### Notes

- This uses a `SecretRequest` for providing the root credentials.  This is defining
  the username and password used to login to the account that has root credentials
  (as per the docs, don't use this for anything in general, just administrative,
  and creating the users/tokens that will actually be interacting).
