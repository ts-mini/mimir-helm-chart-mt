cortex-mt
=========
Cortex MultiTenant

Current chart version is `0.0.1`

Source code can be found [here](https://cortexmetrics.io/)

## Overview

Cortex doesn't have an opinion on an authgateway/multitenant solution at this time.  This chart is meant to be deployed in addition to https://github.com/cortexproject/cortex-helm-chart.  This will configure a few key parts of your cortex config to allow for multi-tenancy-as-config.  This DOES expose implementation details of "auth" for cortex - so beware.  As of writing - this is configured for nginx ingress, nothing else.

## Use

To use this chart you will need to do a few things.  First, set your values.yaml for `cortex-helm-chart` as follows:

```
nginx:
  enabled: false
ingress:
  enabled: false
```

This will disable nginx and ingress from `cortex-helm-chart` and we will configure these in this chart.

### Requirements

- You must deploy this in the same namespace as cortex.
- You must set cortex.releaseName to the value you set for cortex-helm-chart deployment
- ingress, nginx are default to false, but this chart is pretty worthless without them - so setup ingress

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.server.http_listen_port | int | `8080` |  |
| cortex.releaseName | string | `"cortex"` |  |
| ingress.alertmanager.enabled | bool | `false` |  |
| ingress.alertmanager.scopeIDs[0].scopeID | string | `"defaultScopeID"` |  |
| ingress.alertmanager.scopeIDs[0].scopeName | string | `"defaultScope"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.distributor.enabled | bool | `false` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart.local"` |  |
| ingress.hosts[0].paths[0] | string | `"/"` |  |
| ingress.tls[0].hosts[0] | string | `"chart.local"` |  |
| ingress.tls[0].secretName | string | `"tls-example"` |  |
| nginx.affinity | object | `{}` |  |
| nginx.annotations | object | `{}` |  |
| nginx.config.dnsResolver | string | `"kube-dns.kube-system.svc.cluster.local"` |  |
| nginx.enabled | bool | `true` |  |
| nginx.extraArgs | object | `{}` |  |
| nginx.extraContainers | list | `[]` |  |
| nginx.extraPorts | list | `[]` |  |
| nginx.extraVolumeMounts | list | `[]` |  |
| nginx.extraVolumes | list | `[]` |  |
| nginx.http_listen_port | int | `80` |  |
| nginx.image.pullPolicy | string | `"IfNotPresent"` |  |
| nginx.image.repository | string | `"nginx"` |  |
| nginx.image.tag | float | `1.19` |  |
| nginx.initContainers | list | `[]` |  |
| nginx.livenessProbe.httpGet.path | string | `"/healthz"` |  |
| nginx.livenessProbe.httpGet.port | string | `"http-metrics"` |  |
| nginx.livenessProbe.initialDelaySeconds | int | `10` |  |
| nginx.nodeSelector | object | `{}` |  |
| nginx.persistence.subPath | string | `nil` |  |
| nginx.podAnnotations."prometheus.io/port" | string | `"http-metrics"` |  |
| nginx.podAnnotations."prometheus.io/scrape" | string | `""` |  |
| nginx.podDisruptionBudget | object | `{}` |  |
| nginx.podLabels | object | `{}` |  |
| nginx.readinessProbe.httpGet.path | string | `"/healthz"` |  |
| nginx.readinessProbe.httpGet.port | string | `"http-metrics"` |  |
| nginx.readinessProbe.initialDelaySeconds | int | `10` |  |
| nginx.replicas | int | `2` |  |
| nginx.resources.limits.cpu | string | `"100m"` |  |
| nginx.resources.limits.memory | string | `"128Mi"` |  |
| nginx.resources.requests.cpu | string | `"10m"` |  |
| nginx.resources.requests.memory | string | `"16Mi"` |  |
| nginx.securityContext | object | `{}` |  |
| nginx.service.annotations | object | `{}` |  |
| nginx.service.labels | object | `{}` |  |
| nginx.strategy.rollingUpdate.maxSurge | int | `0` |  |
| nginx.strategy.rollingUpdate.maxUnavailable | int | `1` |  |
| nginx.strategy.type | string | `"RollingUpdate"` |  |
| nginx.terminationGracePeriodSeconds | int | `10` |  |
| nginx.tolerations | list | `[]` |  |
