. ./var/apikey.sh

. ./var/model_id.sh

previous_text=""

while read text

do

[ -z "${text}" ] && continue

echo "text: ${text}; ${#text}"

curl -isSL -X POST "https://api.elevenlabs.io/v1/text-to-speech/hwnuNyWkl9DjdTFykrN6" \
 --header "xi-api-key: ${ELEVENLABS_APIKEY}" \
 --header 'Content-Type: application/json' \
 --data "{ \"text\": \"${text}\" , \"model_id\": \"${model_id}\" , \"previous_text\": \"${previous_text}\",  \"language_code\": \"pt\" }" \
 --output "${text}.mp4"

previous_text="${previous_text} ${text}"

echo "previous_text: ${#previous_text}"

done < all-in-one.txt
