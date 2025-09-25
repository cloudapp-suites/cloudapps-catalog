{{- define "automatisch.fullname" -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}

{{- define "automatisch.postgres.fullname" -}}
{{- printf "%s-postgres" .Release.Name -}}
{{- end -}}

{{- define "automatisch.redis.fullname" -}}
{{- printf "%s-redis" .Release.Name -}}
{{- end -}}