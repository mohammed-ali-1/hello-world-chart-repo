status=`curl -X GET $HELMQA_URL'/livecheck?repo='$REPO_URL`
code=`$status | jq.code`

if [ $code -eq 404 ];
then echo "ERROR! $status"
fi
