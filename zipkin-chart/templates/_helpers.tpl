{{- define "zipkin-chart.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "zipkin-chart.labels" -}}
app.kubernetes.io/name: zipkin
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "zipkin-chart.selectorLabels" -}}
app.kubernetes.io/name: zipkin
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}