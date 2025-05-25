{{- define "redis-chart.fullname" -}}
{{ .Release.Name }}-redis
{{- end }}

{{- define "redis-chart.labels" -}}
app.kubernetes.io/name: redis
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "redis-chart.selectorLabels" -}}
app.kubernetes.io/name: redis
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}