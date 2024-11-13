## Application: AlertManager

- [Operator Docs](https://prometheus-operator.dev/docs/getting-started/introduction/)
- This requires the prometheus-operator to be installed (see under the prometheus
  folder adjacent to this)

To set this up, install the prometheus operator, then use this to declare the
alertmanager instance.  Pretty basic setup, see overlays for some of the nice
things to integrate this with stuff.

### NOTES

- For now, no alerts go out.  Will be looking into how I want to handle alerts, but
  this is just being defined since I eventually plan on utilizing it.
