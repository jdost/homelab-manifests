### AdGuard Kustomization: Prometheus Metrics

- [Source](https://github.com/henrywhitaker3/adguard-exporter)

This adds a side deployment that runs an exporter to translate adguard metrics into
something prometheus can ingest.  This assumes the presence of the `external-dns`
to supply/reuse the same secret for credentials.

#### NOTES

- If you have a comma in your password, it breaks the metrics exporter as it treats
  commas as delimiters to collect across multiple instances.  Changing adguard's
  password is a pain, see my notes below
- There is a provided dashboard also defined in here w/ the grafana-operator CRD

#### NOTES: Changing password

As noted in the metrics, this is how to go about updating the password:

1. Get access to `htpasswd` either installing it on machine or:
   In a temporary docker container (`docker run --rm -it ubuntu:24.04 -- /bin/bash`):
   - `apt-get update`
   - `apt-get install -y --no-install-recommends apache2-utils`
2. Get the htpasswd encoded password hash:
   `htpasswd -B -C 10 -n -b <USERNAME> <NEW_PASSWORD>`
   This will return `<USERNAME>:<HASH>`, you just need the `<HASH>` value
3. Connect to the running adguard instance: `kubectl exec -it adguard-0 -- /bin/sh`
4. Edit the config file: `vi ../conf/AdGuardHome.yaml`
5. Update the corresponding `password` field under the `users` list (the one with
   the matching `name`)
6. Restart adguard: `kubectl rollout restart statefulset adguard`
