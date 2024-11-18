text="${1}"

. ./src/model_id.sh

. ./src/apikey.sh

curl --request POST \
 --url "https://api.elevenlabs.io/v1/text-to-speech/hwnuNyWkl9DjdTFykrN6" \
 --header 'Content-Type: application/json' \
 --header "xi-api-key: ${apikey}" \
 --data "{ 'text': '${text}' , 'model_id': '${model_id}' , 'language_code': 'pt' }"
