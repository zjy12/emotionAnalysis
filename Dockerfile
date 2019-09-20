From ubuntu:18.04
ENV LANG C.UTF-8
WORKDIR /home
RUN apt-get update
RUN apt-get install python3-pip libsm6 libxrender1 libxext-dev gcc -y
ADD requirements.txt ./
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
EXPOSE 5000
