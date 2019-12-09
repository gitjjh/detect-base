FROM  jjhdochub/base-image-detect:latest
#MAINTAINER  jeon

#RUN yum -y update
#RUN yum -y install epel-release; yum clean all
#RUN yum -y install python-pip; yum clean all
#RUN apt-get update -y

#RUN sudo mkdir -p /root/detection-test
WORKDIR /opt/app-root/detection
ADD . /opt/app-root/detection

#RUN apt-get install -y git python-pip

#RUN pip install --upgrade pip
#RUN pip install -r requirements.txt

EXPOSE 5000

# ENTRYPOINT ["python"]
CMD ["python", "app.py"]
