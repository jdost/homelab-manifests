### Adguard Regular Backups

- **NOTE** Requires minio

This is an attempt to define a cronjob that will generate an adguard backup on a
regular schedule.  Because adguard's state is really just some stuff stored on the
PVC, the backup is just capturing a subset of this and putting it into a tarball.
For proper resiliency, you may want to run multiple instances and use [this 
project](https://github.com/bakito/adguardhome-sync) to sync settings between them.

This uses a general image I have defined under the top level `/backups` folder that
just provides a basic container image with some common binaries for interacting with
services and uploading to minio.

#### NOTES

- This just gets a backup into minio, you can see an example in the `/backups`
  folder for getting some retention of these off-site
- The frequency is every night (PST based), adjust as warranted
