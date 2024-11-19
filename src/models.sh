rm -rf models.json

. ./var/apikey.sh

curl -sSL "https://api.elevenlabs.io/v1/models" \
 --header "xi-api-key: ${ELEVENLABS_APIKEY}" \
 --output models.json
