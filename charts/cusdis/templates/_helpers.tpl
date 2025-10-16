{{/* vim: set filetype=handlebars : */}}
{{/* Expand the name of the chart */}}
{{- define "cusdis.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Create a default fully qualified app name */}}
{{- define "cusdis.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/* Create chart name and version as used by the chart label */}}
{{- define "cusdis.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace " " "_" | trunc 63 }}
{{- end }}

{{/* Common labels */}}
{{- define "cusdis.labels" -}}
app.kubernetes.io/name: {{ template "cusdis.name" . }}
helm.sh/chart: {{ template "cusdis.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}