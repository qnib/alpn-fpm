FROM qnib/alpn-python

RUN apk add --update ruby ruby-dev libffi-dev ruby-bundler curl-dev build-base \
 && gem install fpm --no-document \
 && apk del ruby-dev libffi-dev curl-dev \
 && rm -rf /var/cache/apk/* 
