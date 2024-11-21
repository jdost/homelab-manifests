### Homepage Kustomization: Include secrets

For a lot of the widgets, you need to provide some form of auth/token to access the
associated API.  I will use environment variable references in the annotations and
then provide the homepage associated secrets to the homepage pod.  This overlay will
configure the homepage deployment to source these secrets and shows the secret 
request (via Rahsia) to provide these values.

#### NOTES

- I reference this overlay, but patch the secrets file to include all the various
  services that need secrets for the attached widget.
