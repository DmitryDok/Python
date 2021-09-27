FROM ubuntu:14.04

RUN apt update && apt install python-all python-pip -y
COPY requirements.txt /tmp/
RUN pip install -qr /tmp/requirements.txt
COPY app.py /opt/webapp
EXPOSE 5000
CMD ["/opt/webapp/app.py"]