## Feature: Backups

Because I don't trust myself to never have major failures (esp considering I got the
hardware my homelab runs on cheap), I decided to build in regular backups to 
minimize dataloss in the event of a major failure.  The idea is that every service
that can will define some form of a CronJob that generates a backup/snapshot and
puts it into the minio bucket `backups`.  Then another general CronJob (example
definition in here) will copy these snapshots off cluster and clean up retention of
them.  This target can be a local network share or a cloud location, but the idea is
getting backups stored somewhere to minimize total dataloss.

### Pattern

This provides a general use container image that I will be including basic shell
utilities for backups on it.  The individual backup jobs will look like:

- A `ConfigMap` that defines a shell script that will perform the backup, which 
  basically entails generated and retrieving the backup from the service (via curl
  or other mechanism) and then uploading the backup bundle to the local minio bucket
- A SecretRequest/Secret that defines connection credentials this script uses for
  authentication with minio and the service
- (Optionally) A ServiceAccount+Role+RoleBinding for any privileged actions needed
- The CronJob for scheduling the job, this will usually use the image built in here
  and mount the script and credentials define, run the script, and (ideally) the
  backup lands in the `backups` bucket in minio

### Off-cluster job

The purpose of this is regularly retaining backups for services in an out-of-cluster
location like a NAS.  It mostly just copies missing backups from the bucket, but
also does some culling to decrease long term size creep by looking at the ctime of
the payloads and removing them at a frequency based on how old them are.
