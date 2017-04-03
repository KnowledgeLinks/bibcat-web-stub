FROM python:3.6.1
MAINTAINER Jeremy Nelson <jermnelson@gmail.com>

ENV HOME /opt/bibcat-web
ENV REPO https://github.com/KnowledgeLinks/bibcat-web-stub

RUN apt-get update && apt-get install -y git && \
    git clone $REPO $HOME && \
    pip install Flask && \
    pip install gunicorn

WORKDIR $HOME
CMD ["nohup", "gunicorn", "-b", "0.0.0.0:5000", "app:app"]
