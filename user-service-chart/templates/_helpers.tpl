{{- define "user-service-chart.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "user-service-chart.labels" -}}
app.kubernetes.io/name: user-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "user-service-chart.selectorLabels" -}}
app.kubernetes.io/name: user-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}