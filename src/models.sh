rm -rf models.json

. ./src/apikey.sh

curl -sSL "https://api.elevenlabs.io/v1/models" \
 --header "xi-api-key: ${apikey}" \
 --output models.json
