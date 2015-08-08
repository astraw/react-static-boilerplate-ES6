#!/bin/bash -x
set -o errexit

THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${THISDIR}/../_site

BUCKET="ads-tmp-play"

# /
aws s3api put-object --bucket ${BUCKET} --key index.html --body index.html --content-type text/html --acl public-read
aws s3api put-object --bucket ${BUCKET} --key bundle.js --body bundle.js --content-type application/javascript --acl public-read

# /about
aws s3api put-object --bucket ${BUCKET} --key about --body about/index.html --content-type text/html --acl public-read
