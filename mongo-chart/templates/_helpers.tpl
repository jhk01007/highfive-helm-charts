{{- define "mongo-chart.fullname" -}}
{{ .Release.Name }}-mongodb
{{- end }}