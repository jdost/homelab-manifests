## Application: Loki

- [General Docs](https://grafana.com/docs/loki/latest/)
- This is based on the [monolithic Helm](https://grafana.com/docs/loki/latest/setup/install/helm/install-monolithic/) but manually updated
- This relies/expects grafana to already be installed (necessary for actually using)

This sets up loki for log viewing in cluster.  It is based on the helm chart output
(Used to generate the resources, then cleaned/modified as needed).  One major change
is upgrading the version used and fixing the configs.  This doesn't need most of the
performant/reliability needs provided, so simplified a lot of it.  The resources
are split between loki and [promtail](https://grafana.com/docs/loki/latest/send-data/promtail/)
to simplify things, but they are heavily related.

### NOTES

- See the overlays for the version-bump patching to control the versions
