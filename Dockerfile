FROM python:3.8-alpine
RUN apk update && apk add --no-cache bash py3-virtualenv
RUN mkdir /apps
ADD container_model.py /apps
ADD dbports.db /apps
ADD users.db /apps
ADD requirements.txt /apps
ADD Service.py /apps
ADD start.sh /apps
ADD stop.sh /apps
ADD wsgi.py /apps
RUN rm -rf /tmp/* /var/cache/apk/*
WORKDIR /apps
#EXPOSE 32000
EXPOSE 32111
RUN cd /apps && pip3 install -r requirements.txt
ENTRYPOINT ["python3","Service.py"]
#ENTRYPOINT ["sh","-C","start.sh"]


 

