#!/bin/bash
# Quality advisory: warns when research/analysis outputs lack source citations
# Runs async - logs warnings instead of blocking
[[ -z "$CLAUDE_PROJECT_DIR" ]] && exit 0

INPUT=$(cat)

# Skip short outputs (task status updates, acknowledgments)
CHAR_COUNT=$(echo "$INPUT" | wc -c)
if [ "$CHAR_COUNT" -lt 500 ]; then
  exit 0
fi

# Check if the output is substantive research/analysis content
if echo "$INPUT" | grep -qi "research\|analysis\|competitive\|review"; then
  if echo "$INPUT" | grep -qi "^#\|key findings\|recommendations\|summary"; then
    if ! echo "$INPUT" | grep -qi "source\|citation\|reference\|http\|\.md"; then
      LOG_FILE="${CLAUDE_PROJECT_DIR}/tracker/config-changes.log"
      mkdir -p "$(dirname "$LOG_FILE")"
      TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
      echo "[$TIMESTAMP] CITATION WARNING: Research/analysis output may be missing source citations" >> "$LOG_FILE"
    fi
  fi
fi

exit 0
