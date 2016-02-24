repo=`basename $(pwd)`
circletoken="asdfasdfasdf"

echo enabling project
curl "https://circleci.com/api/v1/project/segmentio/$repo/follow?circle-token=#circletoken" \
  -X POST \
  -H "Accept: application/json" \
  --silent > /dev/null

echo enabling notifications
curl "https://circleci.com/api/v1/project/segmentio/$repo/settings?circle-token=$circletoken" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{"slack_webhook_url": "https://hooks.slack.com/services/dcaio/caooiduf/cjidajo"}' \
  --silent > /dev/null

echo adding aws access key
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"AWS_ACCESS_KEY_ID","value":"caidcjoaidojai"}' \
--silent > /dev/null

echo adding aws secret key
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"AWS_SECRET_ACCESS_KEY","value":"caiodoi+caioudcjai"}' \
--silent > /dev/null

echo adding npm auth
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
     -X POST \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -d '{"name":"NPM_AUTH","value":"d9921232-2d4d-4f32-8427-c5b851087915"}' \
     --silent > /dev/null

echo adding gh login
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"GH_LOGIN","value":"caiodjcoadio"}' \
--silent > /dev/null

echo adding docker
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"DOCKER_EMAIL","value":"soething@gmail.com"}' \
--silent > /dev/null

curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"DOCKER_USER","value":"oajcdiad"}' \
--silent > /dev/null

curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"DOCKER_PASS","value":"ciaodjcifjoaidifjoaoi"}' \
--silent > /dev/null

echo adding stage secret
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"STAGE_SECRET","value":"cadiojcoaj"}' \
--silent > /dev/null

echo adding production secret
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"PRODUCTION_SECRET","value":"icaojddiajcadjifj"}' \
--silent > /dev/null

echo adding s3 bucket
curl "https://circleci.com/api/v1/project/segmentio/$repo/envvar?circle-token=$circletoken" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"name":"S3_DIRECTORY","value":"segmentio/builds"}' \
--silent > /dev/null
