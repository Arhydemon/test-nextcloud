#!/usr/bin/env bash
set -euo pipefail
if [[ -f .env ]]; then
  set -a; source ./.env; set +a
fi

PROFILE="${1:-onlyoffice}" # onlyoffice | collabora | both | none
STACK="${2:-default}"      # default | dev

case "$PROFILE" in
  onlyoffice) PROFILES="--profile onlyoffice";;
  collabora)  PROFILES="--profile collabora";;
  both)       PROFILES="--profile onlyoffice --profile collabora";;
  none)       PROFILES="";;
  *) echo "Usage: $0 [onlyoffice|collabora|both|none] [default|dev]"; exit 1;;
esac

if [[ "$STACK" == "dev" ]]; then
  PROFILES="$PROFILES --profile dev"
else
  PROFILES="$PROFILES --profile default"
fi

docker compose pull
docker compose $PROFILES up -d

echo "➡️ Nextcloud: http://localhost:${NEXTCLOUD_PORT}"
[[ "$PROFILE" =~ onlyoffice|both ]] && echo "➡️ ONLYOFFICE: http://localhost:${ONLYOFFICE_PORT}"
[[ "$PROFILE" =~ collabora|both ]] && echo "➡️ Collabora (WOPI): http://localhost:${COLLABORA_PORT}"
