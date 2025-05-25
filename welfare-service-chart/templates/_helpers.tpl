{{- define "welfare-service-chart.fullname" -}}
{{ .Release.Name }}-welfare-service
{{- end }}

{{- define "welfare-service-chart.labels" -}}
app.kubernetes.io/name: welfare-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "welfare-service-chart.selectorLabels" -}}
app.kubernetes.io/name: welfare-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}