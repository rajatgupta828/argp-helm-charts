{{/*
Expand the name of the chart.
*/}}
{{- define "lib-base-helpers.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "lib-base-helpers.labels" -}}
app: {{ include "lib-base-helpers.name" . }}
version: {{ .Values.version | quote }}
owner: {{ .Values.owner }}
{{- end }}
