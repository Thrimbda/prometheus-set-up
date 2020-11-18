PROM_CONFIG_PATH ?= prometheus/_config_meta.yaml
PROM_CONFIGMAP_PATH ?= prometheus/resources/08_prometheus_configmap_GENERATED.yaml

GRAFANA_CONFIG_PATH ?= grafana/_config_meta.yaml
GRAFANA_CONFIGMAP_PATH ?= grafana/resources/01_grafana_configmap_GENERATED.yaml

build_prom_conf:
	./make_config.py $(PROM_CONFIG_PATH) $(PROM_CONFIGMAP_PATH)

build_grafana_conf:
	./make_config.py $(GRAFANA_CONFIG_PATH) $(GRAFANA_CONFIGMAP_PATH)