#!/bin/sh
#creates a config.json file for use with etsy hound codesearch
printf "{\n  \"max-concurrent-indexers\" : 2,\n   \"dbpath\" : \"data\",\n   \"repos\" : {\n"

#fetch all aws repos
while read repositoryName ; do
    printf "    \"$repositoryName\" : {\n      \"url\" : \"https://git-codecommit.us-east-1.amazonaws.com/v1/repos/$repositoryName\"\n    },\n"
done < <(aws codecommit list-repositories | jq -r '.repositories[]|"\(.repositoryName)"')

#enter any manual repo defs here
printf "    \"LocalFolder\" : {\n     \"url\" : \"file://dummypath\"\n    }\n"

#finish json
printf "    }\n   }\n}\n"
