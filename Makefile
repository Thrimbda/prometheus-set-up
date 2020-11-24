PROM_CONFIG_PATH ?= prometheus/_config_meta.yaml
PROM_CONFIGMAP_PATH ?= prometheus/resources/08_prometheus_configmap_GENERATED.yaml

GRAFANA_CONFIG_PATH ?= grafana/_config_meta.yaml
GRAFANA_CONFIGMAP_PATH ?= grafana/resources/01_grafana_configmap_GENERATED.yaml

GRAFANA_PROVISIONING_DATASOURCES_PATH ?= grafana/provisioning/datasources/_config_meta.yaml
GRAFANA_PROVISIONING_DATASOURCES_CONFIGMAP_PATH ?= grafana/resources/02_grafana_provisioning_datasources_configmap_GENREATED.yaml

GRAFANA_PROVISIONING_DASHBOARDS_PATH ?= grafana/provisioning/dashboards/_config_meta.yaml
GRAFANA_PROVISIONING_DASHBOARDS_CONFIGMAP_PATH ?= grafana/resources/03_grafana_provisioning_dashboards_configmap_GENREATED.yaml

GRAFANA_DASHBOARDS_PATH ?= grafana/dashboards/General/_config_meta.yaml
GRAFANA_DASHBOARDS_CONFIGMAP_PATH ?= grafana/resources/04_grafana_dashboards_configmap_GENREATED.yaml


build-prom-conf:
	./scripts/make_config.py $(PROM_CONFIG_PATH) $(PROM_CONFIGMAP_PATH)

build-grafana-conf:
	./scripts/make_config.py $(GRAFANA_CONFIG_PATH) $(GRAFANA_CONFIGMAP_PATH)

build-grafana-provisioning-datasources:
	./scripts/make_config.py $(GRAFANA_PROVISIONING_DATASOURCES_PATH) $(GRAFANA_PROVISIONING_DATASOURCES_CONFIGMAP_PATH)

build-grafana-provisioning-dashboards:
	./scripts/make_config.py $(GRAFANA_PROVISIONING_DASHBOARDS_PATH) $(GRAFANA_PROVISIONING_DASHBOARDS_CONFIGMAP_PATH)

build-grafana-dashboards:
	./scripts/make_config.py $(GRAFANA_DASHBOARDS_PATH) $(GRAFANA_DASHBOARDS_CONFIGMAP_PATH)
