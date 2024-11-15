## Controller: Cert Manager

- [General Docs](https://cert-manager.io/docs/)
- This is a controller/CRD to SSL cert generation from lets encrypt, it's widely
  integrated and pretty well travelled
- **NOTE** Since this is just wrapping an upstream manifest, I don't deploy from
  this (But I will try and document various things I use)
- This example uses Rahsia for showing how to populate the secret for DNS challenges

Provides a CRD+Controller to integrate SSL generation for any DNS zone controlled.
The example in `base/` shows defining a staging issuer for the cluster against
cloudflare, using a DNS-01 challenge.  See the docs for various other definitions.

This is a fairly popular CRD and integrates well with other things like traefik 
ingress controllers.  You will see integrations in various other places like ingress
definitions w/ SSL and some other things that like SSL certs (like Adguard).

### NOTES

- You can also define certificates directly using the `Certificate` resource, I use
  these to issue certs for SSL backed services outside k8s.  I will probably try and
  write some example basic controllers for getting the cert/keypair migrated to 
  various places that I use them
- As with other external things, this stuff isn't directly consumed by me
