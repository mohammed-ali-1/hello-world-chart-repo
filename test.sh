HELMQA_URL=https://helmqa-helmqa.a3c1.starter-us-west-1.openshiftapps.com
REPO_URL=https://github.com/mohammed-ali-1/hello-world-chart-repo.git
responseString=`curl -X GET $HELMQA_URL'/livecheck?repo='$REPO_URL`
statusCode=`curl -X GET $HELMQA_URL'/livecheck?repo='$REPO_URL | jq .code`
if [ 1 == 0 ]; then
 	echo "ERROR!\n $responseString"; exit 1;
else
	./push.sh
fi
