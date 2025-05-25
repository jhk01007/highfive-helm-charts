{{- define "board-service-chart.fullname" -}}
{{ .Release.Name }}-board-service
{{- end }}

{{- define "board-service-chart.labels" -}}
app.kubernetes.io/name: board-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "board-service-chart.selectorLabels" -}}
app.kubernetes.io/name: board-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}