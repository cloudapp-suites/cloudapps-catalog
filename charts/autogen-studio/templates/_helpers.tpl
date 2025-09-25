{{/*
Define some default values for the AutoGen Studio chart
*/}}

{{- define "autogenstudio.name" -}}
{{- default "autogenstudio" .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "autogenstudio.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default "" .Values.nameOverride -}}
{{- if $name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "autogenstudio.labels" -}}
app.kubernetes.io/name: {{ include "autogenstudio.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}