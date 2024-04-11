{{/* Define the args */}}
{{- define "wyoming_whisper.args" -}}
args:
  - --language
  - "{{ .Values.wyoming_whisper.language }}"
  - --model
  {{- if .Values.wyoming_whisper.custom_model }}
  - "{{ .Values.wyoming_whisper.custom_model }}"
  {{- else }}
  - "{{ .Values.wyoming_whisper.model }}"
  {{- end }}
  - --beam-size
  - "{{ .Values.wyoming_whisper.beam_size }}"
  - --initial-prompt
  - "{{ .Values.wyoming_whisper.initial_prompt }}"
{{- end -}}
