{{- define "data-collector-chart.fullname" -}}
{{ .Release.Name }}-data-collector
{{- end }}


{{- define "data-collector-chart.labels" -}}
app.kubernetes.io/name: data-collector
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "data-collector-chart.selectorLabels" -}}
app.kubernetes.io/name: data-collector
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

