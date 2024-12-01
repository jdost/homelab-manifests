## Application: LinkWarden

- [General Docs](https://docs.linkwarden.app/)
- Requires Postgresql controller to provide the database

Local bookmark/link manager, which offers things like categories and tags for more
versatility in what is managed (i.e. permanent bookmarks vs read-later tracking).
Backup is just a db dump plus a copy of the data directory.  The db holds all the
information, the data directory just holds large assets (like the icons and 
snapshots), so preserving that saves regen time on a recovery.

### Notes

- Resources are still being figured out, since it's a nodejs app, it wants a lot of
  resources, so adjusting up without allocating too much for just this app
