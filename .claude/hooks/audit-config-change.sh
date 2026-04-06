#!/bin/bash
# Logs configuration changes to tracker/config-changes.log
[[ -z "$CLAUDE_PROJECT_DIR" ]] && exit 0

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
LOG_FILE="${CLAUDE_PROJECT_DIR}/tracker/config-changes.log"
mkdir -p "$(dirname "$LOG_FILE")"

INPUT=$(cat)
echo "[$TIMESTAMP] Config change detected: $INPUT" >> "$LOG_FILE"

# Log rotation: trim to last 250 lines if over 500
if [[ -f "$LOG_FILE" ]] && [[ $(wc -l < "$LOG_FILE") -gt 500 ]]; then
  tail -n 250 "$LOG_FILE" > "${LOG_FILE}.tmp" && mv "${LOG_FILE}.tmp" "$LOG_FILE"
fi
