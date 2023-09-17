This creates a self signed certificate for k3s' Traefik ingress controller's default certificate.\
It also provisions a private docker registry.

For pushing/pulling images, you will need to setup insecure registries on the host that's pushing/pulling.\
https://docs.docker.com/registry/insecure/

You will also need to setup k3s to point to the newly created private registry.\
https://docs.k3s.io/installation/private-registry
