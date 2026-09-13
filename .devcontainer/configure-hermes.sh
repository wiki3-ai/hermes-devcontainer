#!/usr/bin/env bash
set -euo pipefail

set_default() {
  local key="$1"
  local value="$2"

  if ! hermes config get "$key" >/dev/null 2>&1; then
    hermes config set "$key" "$value"
  fi
}

# Preconfigure Unsloth Desktop as an OpenAI-compatible provider.
# Existing user configuration always wins.
set_default providers.unsloth.name "Unsloth Studio"
set_default providers.unsloth.api "http://host.docker.internal:8888/v1"
set_default providers.unsloth.key_env "UNSLOTH_API_KEY"
set_default providers.unsloth.transport "chat_completions"
set_default providers.unsloth.discover_models true

# Make the credential visible in the Hermes Dashboard without supplying it.
# The user enters the actual key there.
set_default UNSLOTH_API_KEY ""
