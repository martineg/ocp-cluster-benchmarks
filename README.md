Resources to deploy [Cerberus](https://github.com/redhat-chaos/cerberus) and [benchmark-operator](https://github.com/cloud-bulldozer/benchmark-operator) to an OpenShift cluster.

* Cerberus needs a valid _kubeconfig_ to run that should be copied to the _cerberus/base_ directory.
* Cerberus will run with _privileged_ mode, a service account and role binding will be created.

# Deploying

Running `deploy.sh` will deploy both Cerberus and benchmark-operator to the cluster and wait for Cerberus to return an OK signal.

```
$ ./deploy.sh
namespace/benchmark-operator created
namespace/cerberus created
(..)
deployment.apps/benchmark-operator created
deployment.apps/cerberus created
route.route.openshift.io/cerberus created
Waiting for Cerberus to validate cluster
..........................
Cluster is running and ready
```
