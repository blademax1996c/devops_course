FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
 python3 \
 python3-pip 

ADD requirements.txt /opt
ADD hello.py /opt

RUN pip3 install -r /opt/requirements.txt

ENV FLASK_APP=hello

WORKDIR /opt

# # ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
# CMD ["python3 -m hello.py"]
