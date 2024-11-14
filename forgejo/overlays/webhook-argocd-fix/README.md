### Forgejo Kustomization: Fix the URL in webhooks to work with ArgoCD

The `ROOT_URL` setting is what gets listed as the URL in webhooks, so you need to
update it to point to the service URL used in ArgoCD so that it responds to webhooks
(when set up) and gets immediate updates whenever you push.
