#!/bin/bash

JSON_RELEASES=$(curl -s https://gitlab.com/api/v4/projects/5158408/releases/)
LATEST_RELEASE=$(echo "${JSON_RELEASES}" | jq -r '.[0]')
LATEST_NAME=$(echo "${LATEST_RELEASE}" | jq -r '.name')
LATEST_ASSET=$(echo "${LATEST_RELEASE}" | jq -r '.assets.sources[]|select(.format == "zip")|.url')

echo "${LATEST_NAME}"
echo "${LATEST_ASSET}"

sed 's|\$VERSION|'${LATEST_NAME}'|g' "_snapcraft.yaml" > "snapcraft.yaml"
sed -i 's|\$ARTIFACT|'${LATEST_ASSET}'|g' "snapcraft.yaml"
