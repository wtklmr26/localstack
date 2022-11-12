#! /bin/bash

aws ses verify-email-identity \
--region us-east-1 \
--profile localstack \
--endpoint-url=http://localhost:4566 \
--email-address sample@example.com


aws ses send-email \
--region us-east-1 \
--profile localstack \
--endpoint-url=http://localhost:4566 \
--to sample@example.com \
--from sample@example.com \
--subject hoge \
--text fuga

aws ses list-identities \
--region us-east-1 \
--profile localstack \
--endpoint-url=http://localhost:4566
