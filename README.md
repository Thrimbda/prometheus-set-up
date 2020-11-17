# prometheus-set-up
a collection of resource declaration to set up prometheus on cluster.
experimented on k8s-1.19.3

## Usage

for config generation:
```bash
make
```

set up the resources by order, enjoy.

## How to

[在 K8s 单节点集群上手动搭建 Prometheus](./setup-how-to/setup-how-to.md)

## TODO

- [x] script to make prometheus configuration.
- [x] how-to document.
- [ ] script to compact resource declarations.
- [ ] grafana deployment
- [ ] add non-NodePort option
