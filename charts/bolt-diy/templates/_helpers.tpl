{{- define "bolt-diy.fullname" -}}
{{- if .Values.nameOverride }}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

{{- define "bolt-diy.namespace" -}}
{{- .Release.Namespace }}
{{- end -}}

{{- define "bolt-diy.labels" -}}
app: {{ template "bolt-diy.fullname" . }}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}