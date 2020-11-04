PROM_CONFIG_PATH ?= prometheus-config.yaml
CONFIGMAP_PATH ?= prometheus/08_prometheus_configmap_GENERATED.yaml

build_conf:
	./make_config.py $(PROM_CONFIG_PATH) $(CONFIGMAP_PATH)