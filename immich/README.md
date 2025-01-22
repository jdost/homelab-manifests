## Application: Immich

- [General Docs](https://immich.app/docs/overview/quick-start)
- This requires the `postgresql` controller to be available
- This requires the `redis` controller to be available

A photo management service, this expects an external PVC to be declared that is
where you store your photos (ideally on the network with off-site backup enabled).
This is where new photos uploaded to immich will be stored.

### Notes

- The database configuration is peculiar because it overrides the default instance 
  image with an extended version with the pgvector plugin available (used from:
  [here](https://github.com/tensorchord/cloudnative-pgvecto.rs))
- This expects there to be a PVC available (defined outside the manifest) declaring
  the volume used for storage.  For me, this lives on my NAS (with off-site 
  replication) but should be whatever works for your setup.
- This requests a lot of resources up front, I may spend some time figuring out how
  to break up the server pod between api and microservices to allow for smaller
  pods in scheduling.
