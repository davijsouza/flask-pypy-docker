from pypy:3-6-slim 

run apt update 
run apt install -y libpython3-dev build-essential libpcre3 libpcre3-dev 
run apt install -y libssl-dev libffi-dev 
run apt install -y nginx supervisor 

run echo "files = /etc/supervisor/conf.d/.*ini" >> /etc/supervisor/supervisord.conf 

#create user 
ARG user=lavender
ARG group=lavender
ARG uid=1000
ARG gid=1001
RUN adduser ${user}

USER ${user}
RUN mkdir /home/${user}/src
RUN mkdir /home/${user}/log

ADD app/ /home/${user}/src/app/
ADD config.py /home/${user}/src/
ADD requirements.txt /home/${user}/src/
ADD flask-gunicorn-gevent.sh /home/${user}/src/

USER root 
RUN pip install -r /home/${user}/src/requirements.txt

ADD nginx-conf/lavender.conf /etc/nginx/conf.d/
ADD supervisord-conf/ /etc/supervisor/conf.d/

EXPOSE 8006

CMD ["supervisord", "--nodaemon", "-c", "/etc/supervisor/supervisord.conf"]
