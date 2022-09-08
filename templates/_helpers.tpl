{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "mimir.name" -}}
{{- .Values.mimir.releaseName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mimir.fullname" -}}
{{- .Values.mimir.releaseName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mimir.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Create the app name of mimir clients. Defaults to the same logic as "mimir.fullname", and default client expects "prometheus".
*/}}
{{- define "client.name" -}}
{{- if .Values.client.name -}}
{{- .Values.client.name -}}
{{- else if .Values.client.fullnameOverride -}}
{{- .Values.client.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default "prometheus" .Values.client.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}


{{/*
Alertmanager http prefix
*/}}
{{- define "mimir.alertmanagerHttpPrefix" -}}
{{ default "/alertmanager"  .Values.mimir.alertmanagerHttpPrefix }}
{{- end -}}


{{/*
Prometheus http prefix
*/}}
{{- define "mimir.prometheusHttpPrefix" -}}
{{ default "/prometheus" .Values.mimir.prometheusHttpPrefix  }}
{{- end -}}

{{/*
Internal servers http listen port - derived from Mimir default
*/}}
{{- define "mimir.serverHttpListenPort" -}}
{{  default "8080" .Values.mimir.serverHttpListenPort }}
{{- end -}}