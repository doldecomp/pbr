#!/bin/bash -ex

echo "1"
# Only run this script if it's the master branch build.
if [[ "$TRAVIS_BRANCH" != "master" || "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  exit 0
fi

echo "2"
build_name=$1
map_file=$(dirname "$0")/../../build/pbr_pal/pbr_pal.map
if [ ! -f $map_file ]; then
  echo "$map_file does not exist!"
  exit 1
fi

echo "3"
make -C ${TRAVIS_BUILD_DIR}/.travis/calcrom
echo "4"
output=$(${TRAVIS_BUILD_DIR}/.travis/calcrom/calcrom ${TRAVIS_BUILD_DIR} | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g')
echo "5"
curl -d "{\"username\": \"$CALCROM_DISCORD_WEBHOOK_USERNAME\", \"avatar_url\": \"$CALCROM_DISCORD_WEBHOOK_AVATAR_URL\", \"content\":\"\`\`\`$build_name progress:\\n$output\`\`\`\"}" -H "Content-Type: application/json" -X POST $CALCROM_DISCORD_WEBHOOK_URL
popd
