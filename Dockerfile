FROM amazonlinux:2023

RUN yum update -y && \
    yum install -y python3 python3-pip git curl wget && \
    yum clean all

RUN pip3 install boto3 requests flask

COPY . /app
WORKDIR /app

CMD ["python3", "-c", "print('ECR Cache Test App Running')"]
