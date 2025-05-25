{{- define "monitoring-chart.fullname" -}}
{{ .Release.Name }}-monitoring
{{- end }}

{{- define "monitoring-chart.labels" -}}
app.kubernetes.io/name: monitoring
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "monitoring-chart.selectorLabels" -}}
app.kubernetes.io/name: monitoring
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}