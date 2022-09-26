# Deploy benchmark-operator for cluster testing

The _benchmark-operator_ deployment files have been created from the checked-out [benchmark-operator](https://github.com/cloud-bulldozer/benchmark-operator) Helm repo as follows

````
benchmark-operator git:(master) helm template benchmark-operator \
    --output-dir ~/src/ocp-cluster-benchmarks/apps/benchmark-operator/base/ \
    --namespace my-ripsaw \
    --values values.yaml .
````

Benchmark examples are provided in the top-level _benchmarks_ folder in this repo.
