### Adventurelog Kustomization: Non-SSL Ingress

Just basic example of defining an ingress on normal HTTP and the required app 
settings to serve properly from behind it.  This uses `adventure.log` to demonstrate
the value (to avoid confusion with the internal service DNS of `adventurelog`, which
is used to route between the frontend and backend in-cluster).
