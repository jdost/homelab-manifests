## Controller: CloudNativePG

- [General Docs](https://cloudnative-pg.io/documentation/1.24/)
- This is a controller/CRD to provide PostgresSQL databases in cluster, it is 
  expected for a lot of applications that want a DB
- **NOTE** Since this is just wrapping an upstream manifest, I don't deploy from
  this (But I will try and document various things I use)

Provides a CRD+Controller to allow for declaring a DB resource and then ingesting 
the associated secrets for connectivity.  See the examples folder for some generic
examples of configuration of the generated databases (these are going to be the
types of things I apply per cluster based on node count for replication and backup
setup for snapshotting).

### NOTES

- Since this just wraps the upstream manifest, this is just a set of examples of 
  what I am doing per environment
