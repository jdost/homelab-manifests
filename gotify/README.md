## Application: Gotify

- [General Docs](https://gotify.net/docs/install)
- Requires Postgresql controller to provide the database
- Requires Rahsia to be available (to define the admin connection credentials)

Local notification service that is used as the central notification backbone.  You
can then either connect/expose it for general notifications *or* run some sort of
bridge to repost notifications to something else.

### Notes

- Secrets sets the default login user and defines how complex passwords are stored
  as.  Probably don't need them too strong depending on how exposed the service is.
- Backups are really just a db dump, but gotify stores avatar images in the 
  persistent volume, so those also get snagged.
