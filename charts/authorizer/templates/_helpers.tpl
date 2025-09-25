{{- define "name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{- define "authorizer.fullname" -}}
{{- printf "%s" (include "name" .) -}}
{{- end -}}

{{- define "authorizer.namespace" -}}
{{- printf "%s" .Release.Namespace -}}
{{- end -}}

{{- define "authorizer.labels" -}}
app: {{ template "authorizer.fullname" . }}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}