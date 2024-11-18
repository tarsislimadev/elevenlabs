rm -rf shared-voices.json

. ./src/apikey.sh

curl -sSL "https://api.elevenlabs.io/v1/shared-voices?language=pt&gender=male&page_size=100&accent=brazilian" \
  --header "xi-api-key: ${apikey}" \
  --output shared-voices.json
