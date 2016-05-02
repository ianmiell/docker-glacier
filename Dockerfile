FROM debian
RUN apt-get update && apt-get install -y python-pip
RUN pip install awscli
RUN pip install boto3
# Credentials should be your aws details like this stored in a local folder, and with perms 0600. It's ignored by git:
#[default]
#aws_access_key_id = YOUR_ACCESS_KEY
#aws_secret_access_key = YOUR_SECRET_KEY
ADD credentials /root/.aws/credentials
ADD config /root/.aws/config
CMD bash
