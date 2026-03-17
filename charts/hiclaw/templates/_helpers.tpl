{{- define "hiclaw.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "hiclaw.fullname" -}}
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

{{- define "hiclaw.labels" -}}
app: {{ include "hiclaw.fullname" . }}
app.kubernetes.io/name: {{ include "hiclaw.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Values.edas.enabled }}
cloudapp.alibabacloud.com/app: {{ .Release.Name }}
{{- end }}
{{- end }}

{{- define "hiclaw.selectorLabels" -}}
app: {{ include "hiclaw.fullname" . }}
{{- end }}
