{{- define "board-service-chart.fullname" -}}
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

{{- define "board-service-chart.labels" -}}
app.kubernetes.io/name: board-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "board-service-chart.selectorLabels" -}}
app.kubernetes.io/name: board-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}