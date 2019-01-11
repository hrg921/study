aws cloudformation package \
  --template-file template.yaml \
  --output-template-file serverless-output.yaml \
  --s3-bucket apollo-lambda-graphql

aws cloudformation deploy \
  --template-file serverless-output.yaml \
  --stack-name apollo-lambda-graphql \
  --capabilities CAPABILITY_IAM
  --on-failure DELETE