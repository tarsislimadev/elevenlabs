text="${1}"

. ./var/model_id.sh

. ./var/apikey.sh

curl --request POST \
 --url "https://api.elevenlabs.io/v1/text-to-speech/hwnuNyWkl9DjdTFykrN6" \
 --header 'Content-Type: application/json' \
 --header "xi-api-key: ${ELEVENLABS_APIKEY}" \
 --data "{ 'text': '${text}' , 'model_id': '${model_id}' , 'language_code': 'pt' }"
