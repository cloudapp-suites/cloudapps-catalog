{{- define "longclaw.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "longclaw.labels" -}}
app.kubernetes.io/name: longclaw
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "longclaw.selectorLabels" -}}
app.kubernetes.io/name: longclaw
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
