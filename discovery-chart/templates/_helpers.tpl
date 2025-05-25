{{- define "discovery-service-chart.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "discovery-service-chart.labels" -}}
app.kubernetes.io/name: discovery
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "discovery-service-chart.selectorLabels" -}}
app.kubernetes.io/name: discovery
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}