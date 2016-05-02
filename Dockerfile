FROM debian
RUN apt-get update && apt-get install python-pip
RUN pip install awscli
RUN pip install boto3
CMD bash
