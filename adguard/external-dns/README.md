## Controller/Service: External-DNS

- [General Docs](https://kubernetes-sigs.github.io/external-dns/latest/)
- [Adguard Provider](https://github.com/muhlba91/external-dns-provider-adguard)

This is a service that watches ingress resources and updates an external DNS server
with the DNS entries for ingress resources.  My setup is adguard driven, so this
includes an additional provider to update the cluster hosted Adguard service.

### NOTES

- The provider requires credentials via a secret request w/ Rahsia
- Adguard's auth model is... limited, so you basically just use the same login as
  you initially made on first login, you can define additional users (by hand 
  editting the config file and restarting the pods) but they hold the same admin
  permissions, so it's really just about password leaking
- You can look up external-dns if you want to use other providers, this is just
  configuring in accordance with adguard
