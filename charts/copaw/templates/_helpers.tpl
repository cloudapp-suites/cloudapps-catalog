{{- define "copaw.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "copaw.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{- define "copaw.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "copaw.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- if .Values.cloudProvider }}
{{- if eq .Values.cloudProvider "alibaba" }}
cloudapp.alibabacloud.com/app: {{ include "copaw.fullname" . }}
{{- end }}
{{- end }}
{{- end }}

{{- define "copaw.selectorLabels" -}}
app.kubernetes.io/name: {{ include "copaw.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
