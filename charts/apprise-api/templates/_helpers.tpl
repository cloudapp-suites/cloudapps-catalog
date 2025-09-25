{{/* vim: set filetype=helm : */}}
{{/*
Common template definitions for the apprise-api chart
*/}}
{{- define "apprise.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name "." -}}
{{- $name | replace "." "" | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end}}

{{- define "apprise.chart" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name "." -}}
{{- $name | replace "." "" | title | trimSuffix "" -}}
{{- else -}}
{{- title $name -}}
{{- end -}}
{{- end}}

{{- define "apprise.selectorLabels" -}}
app.kubernetes.io/name: {{ template "apprise.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end}}