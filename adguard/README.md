## Application: Adguard

- [General Docs](https://github.com/AdguardTeam/AdGuardHome/wiki/Docker)
- See the `external-dns` directory for populating records w/ cluster ingress 
  definitions
- Requires Rahsia to be available (to define the admin connection credentials)

Local hosted DNS server with built in filterlist ad blocking (at a DNS level).  
After running, you need to point your system to use the running service as the DNS
server (either on your system or at the networking level like on your router).  By
default it won't do anything beyond caching DNS queries.  You need to log into it
to add any adblock filters.

### Notes

- There is an overlay showing how to add the `adguard-exporter` as an additional
  deployment, check it's README for some notes
- Adguard doesn't have any real idea of scoping, so anything using it's API is
  basically an admin (you can define additional logins via the config... directly,
  but they have the same scope)
