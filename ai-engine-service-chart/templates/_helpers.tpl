{{- define "ai-engine-service-chart.fullname" -}}
{{ .Release.Name }}-ai-engine-service
{{- end }}

{{- define "ai-engine-service-chart.labels" -}}
app.kubernetes.io/name: ai-engine-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "ai-engine-service-chart.selectorLabels" -}}
app.kubernetes.io/name: ai-engine-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}