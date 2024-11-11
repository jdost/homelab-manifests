## Application: Forgejo

- [General Docs](https://forgejo.org/docs/latest/admin/installation-docker/)
- **NOTE** Requires the [CloudNativePG](../postgresql/controller/) for the 
  relational datastore
- There is a secondary target under the `runner` directory for deploying the Actions 
  runners (see that folder for information)
- **NOTE** The runners requires Rahsia to be available (for filling in the 
  connection credentials for the runner pods)

Local hosted code/git forge for storing local code repositories and getting all the
bells and whistles with it.  Used for CI actions with the built in ACT system (which
mimics the github actions system) which is used for some small tasks like validation
and image building.

### Notes

- Overlays show ingress definitions
- As stated above, the `runners` folder defines the optional runner deployment
