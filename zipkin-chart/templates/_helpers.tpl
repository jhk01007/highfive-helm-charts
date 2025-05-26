{{- define "zipkin-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}


{{- define "zipkin-chart.labels" -}}
app.kubernetes.io/name: zipkin
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "zipkin-chart.selectorLabels" -}}
app.kubernetes.io/name: zipkin
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}