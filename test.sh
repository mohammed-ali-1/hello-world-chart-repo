responseString=`curl -X GET $HELMQA_URL'/livecheck?repo='$REPO_URL`
statusCode=`$responseString | jq .code`

if [ $statusCode -eq 404 ];
then echo "ERROR! $responseString"
fi
