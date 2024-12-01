## Controller: MetalLB

- [General Docs](https://metallb.io/concepts/)
- This is a controller/CRD to provide loadbalancers with floating IPs to
- **NOTE** Since this is just wrapping an upstream manifest, I don't deploy from
  this (But I will try and document various things I use)
- **NOTE** See the examples for actual usage, this requires/expects some (outside
  k8s) networking control

Provides a system for annotating LoadBalancer services to get reserved or unique IP
addresses based on configuration.  This means that you can get a static IP for 
services across nodes (and outside their own IPs) when host routing (i.e. outside
of HTTP) is not an option.  This is used for stuff like DNS, SSH w/ forgejo, and 
others that want non HTTP ports.

### NOTES

