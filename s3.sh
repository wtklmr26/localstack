#! /bin/bash

aws --endpoint-url=http://localhost:4566 s3api create-bucket --bucket my-bucket --profile localstack --region us-east-1

aws --endpoint-url=http://localhost:4566 s3api list-buckets --profile localstack
