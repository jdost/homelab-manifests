## Application: Cloudflared

- [General Docs](https://github.com/cloudflare/cloudflared)
- Requires Rahsia to be available (to define the admin connection credentials)

Cloudflare based service tunnelling allows for external access to services using 
a port tunnel to avoid opening public ports and being able to leverage 
cloudflare's ingress network and security.  Most of this is managed via the 
cloudflare dashboard (you define the routes there) and the token is used to auth
for pushing the configs out.
