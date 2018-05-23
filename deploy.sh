#!/bin/bash
export S3_BUCKET=dameonsmith.com-cdn-bucket

rm -rf public
hugo
aws --profile static-site s3 sync public/ s3://$S3_BUCKET/ --delete
