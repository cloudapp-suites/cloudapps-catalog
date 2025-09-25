{{/* vim: set filetype=helm : */}}
{{/* Expand the name of the chart */}}
{{- define "evershop.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end}}

{{/* Create a default fully qualified app name. We truncate at 63 chars because some Kubernetes name fields are limited to this. */}}
{{- define "evershop.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride}}
{{- if .Release.IsInstall -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{- $name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end}}
{{- end}}

{{/* Create chart namespace */}}
{{- define "evershop.namespace" -}}
{{- default .Release.Namespace .Values.namespace }}
{{- end}}

{{/* Common labels */}}
{{- define "evershop.labels" -}}
app.kubernetes.io/name: {{ include "evershop.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end}}