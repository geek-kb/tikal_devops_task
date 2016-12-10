FROM python:2.7

MAINTAINER Itai Ganot lel@lel.bz

RUN mkdir -p /root/project

RUN export DEBIAN_FRONTEND="noninteractive" && \
		apt-get update && apt-get install -y \
		git \
		gcc \
		gettext \
		sqlite3 \
		--no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/geek-kb/tikal_assignment.git /root/project

RUN pip install /root/project/django
RUN cd /root/project/django && django-admin startproject mysite
WORKDIR /root/project/django/mysite
RUN python manage.py migrate 

EXPOSE 80

CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
