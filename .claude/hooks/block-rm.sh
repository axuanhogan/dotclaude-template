#!/bin/bash

if ! command -v jq &>/dev/null; then
  echo "jq is not installed" >&2
  exit 2  # return blocking error
fi

COMMAND=$(jq -r '.tool_input.command')

if echo "$COMMAND" | grep -qE '^\s*rm\s+'; then
  jq -n '{
    hookSpecificOutput: {
      hookEventName: "PreToolUse",
      permissionDecision: "deny",
      permissionDecisionReason: "Destructive command blocked by hook"
    }
  }'
else
  exit 0  # allow the command
fi