{{- define "zeroclaw.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "zeroclaw.fullname" -}}
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

{{- define "zeroclaw.labels" -}}
app: {{ include "zeroclaw.fullname" . }}
app.kubernetes.io/name: {{ include "zeroclaw.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Values.edas.enabled }}
cloudapp.alibabacloud.com/app: {{ .Release.Name }}
{{- end }}
{{- end }}

{{- define "zeroclaw.selectorLabels" -}}
app: {{ include "zeroclaw.fullname" . }}
{{- end }}
