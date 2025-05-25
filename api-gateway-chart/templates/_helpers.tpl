{{- define "api-gateway-chart.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "api-gateway-chart.labels" -}}
app.kubernetes.io/name: api-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "api-gateway-chart.selectorLabels" -}}
app.kubernetes.io/name: api-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}