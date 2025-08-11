#!/usr/bin/env bash
set -euo pipefail

cp -n .env.example .env || true

# shellcheck disable=SC1091
source ./.env

mkdir -p "${DOCKER_DATA}/${CLIENT_NAME}/nextcloud/config" \
         "${DOCKER_DATA}/${CLIENT_NAME}/nextcloud/data" \
         "${DOCKER_DATA}/${CLIENT_NAME}/nextcloud/themes" \
         "${DOCKER_DATA}/${CLIENT_NAME}/nextcloud/custom_apps"

# dev-кодовая папка (для профиля "dev")
mkdir -p ./nextcloud

# генернём случайный JWT, если всё ещё дефолт
if grep -q "ONLYOFFICE_JWT=change_me" .env; then
  RAND=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 48)
  sed -i.bak "s/ONLYOFFICE_JWT=.*/ONLYOFFICE_JWT=${RAND}/" .env || true
fi

echo "✅ init done. Проверь .env и пути в ${DOCKER_DATA}."