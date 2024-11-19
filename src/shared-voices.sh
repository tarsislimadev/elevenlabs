rm -rf shared-voices.json

. ./var/apikey.sh

curl -sSL "https://api.elevenlabs.io/v1/shared-voices?language=pt&gender=male&page_size=100&accent=brazilian" \
  --header "xi-api-key: ${ELEVENLABS_APIKEY}" \
  --output shared-voices.json
