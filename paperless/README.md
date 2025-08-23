## Application: Paperless-ngx

- [General Docs](https://docs.paperless-ngx.com/setup/)
- Requires the `postgresql` operator to be installed for the database
- Requires the `redis` operator to be installed for the broker

Document management system used to handle digital documents.  Helpful for taking 
various document sources and making them searchable and indexed for easy lookup of
records that are wanted to be preserved.  Because this is managing documents, it is
expected/required to define a PVC for where these are stored (outside of k8s, as I
don't want my documents lifespan to be tied to k8s).

### Notes

- This expects there to be a PVC available named `documents`.  For my setup, this
  lives on my NAS (with off-site backups), but should be whatever works best for 
  your setup.  Because of the purpose of this, backups/resiliency is warranted.
