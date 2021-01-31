FROM public.ecr.aws/lambda/java:11

# install java
RUN yum install -y java-11-amazon-corretto-headless
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto.x86_64

