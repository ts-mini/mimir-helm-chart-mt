# mimir-mt

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: v1.1.0](https://img.shields.io/badge/AppVersion-v1.1.0-informational?style=flat-square)

Cortex MultiTenant

**Homepage:** <https://mimirmetrics.io/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Tyler Horvath | <tyler.horvath@gmail.com> |  |

## Source Code

* <https://github.com/ts-mini/mimir-helm-chart-mt>

## Requirements

Kubernetes: `^1.10.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.clusterDomain | string | `"cluster.local"` |  |
| ingress.alertmanager.enabled | bool | `false` |  |
| ingress.alertmanager.scopeIDs[0].scopeID | string | `"defaultScopeID"` |  |
| ingress.alertmanager.scopeIDs[0].scopeName | string | `"defaultScope"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.distributor.enabled | bool | `false` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart.local"` |  |
| ingress.hosts[0].paths[0] | string | `"/"` |  |
| ingress.ingressClassName | string | `"nginx"` |  |
| ingress.tls[0].hosts[0] | string | `"chart.local"` |  |
| ingress.tls[0].secretName | string | `"tls-example"` |  |
| mimir.alertmanagerHttpPrefix | string | `"/alertmanager"` |  |
| mimir.releaseName | string | `"mimir"` |  |
| mimir.serverHttpListenPort | int | `8080` |  |
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
| nginx.image.tag | float | `1.21` |  |
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
| nginx.strategy.rollingUpdate.maxSurge | string | `"50%"` |  |
| nginx.strategy.rollingUpdate.maxUnavailable | string | `"50%"` |  |
| nginx.strategy.type | string | `"RollingUpdate"` |  |
| nginx.terminationGracePeriodSeconds | int | `10` |  |
| nginx.tolerations | list | `[]` |  |

