#!/bin/bash

my_dir="$(dirname "$0")"
endpoint=dsast-epm-ssdl-carrier.apps.cluster12.eu.aws.cloudapp.epam.com
bucket=carrier
source "$my_dir/.env"


#export 


function minio() {
    env \
        REQUESTS_CA_BUNDLE="$my_dir/IssuingCA.cer" \
        AWS_ACCESS_KEY_ID="$access_key" \
        AWS_SECRET_ACCESS_KEY="$secret_key" \
    aws s3 --endpoint=https://$endpoint \
      "$@"
}

#minio ls s3://$bucket/ --recursive

mkdir -p tmp/minio/carrier
minio sync s3://$bucket/ tmp/minio/carrier