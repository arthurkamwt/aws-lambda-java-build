deploy: .FORCE
    docker build -t public.ecr.aws/arthurkamwt/aws-lambda-java-build .
    aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
    docker push public.ecr.aws/arthurkamwt/aws-lambda-java-build
.FORCE:
