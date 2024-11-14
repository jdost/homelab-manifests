### Minio Kustomization: Metric Scraping

Turns off auth based scraping and defines a prometheus service monitor to scrape
the metrics endpoint.  Then points at the minio provided dashboard for grafana
visualization.
