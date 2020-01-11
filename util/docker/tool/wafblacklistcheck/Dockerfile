from python:alpine3.10
RUN apk add --no-cache bind-tools  # this is for DIG


COPY . /code/
WORKDIR /code/
RUN pip install -r req.txt

ENTRYPOINT sh /code/entrypoint.sh

