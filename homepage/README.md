## Application: Homepage

- [General Docs](https://gethomepage.dev/configs/)
- (Optional) Requires Rahsia to be available (to populate widget secerts)

Local landing page w/ service discovery.  It provides an initial portal to point at
local applications (or public) and this setup utilizes service discovery to auto
include any services with the expected labels.  For widget usage, I try to auth
them via secrets using the environment variable interpolation.  See the overlays
for examples of what the secrets look like, but you will probably want to maintain
your own set to populate other secrets beyond the examples (depending on what is in
your cluster).

### Notes

