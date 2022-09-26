# Deploy Cerberus for cluster validation

This will deploy [Cerberus](https://github.com/redhat-chaos/cerberus) in an OpenShift cluster to run basic cluster validation.

* Cerberus needs a _kubeconfig_ to run that should be copied to the _base_ directory.
* Cerberus will run with _privileged_ mode, a service account and role binding will be created.


