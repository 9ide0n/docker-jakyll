FROM gide0n/ruby:v2.4.1
MAINTAINER 9ide0n "denis.fomichev2017@yandex.ru"
ENV REFRESHED_AT 2017-12-27
RUN /bin/bash -l -c 'gem install --no-rdoc --no-ri jekyll -v 2.5.3'
VOLUME /data
VOLUME /var/www/html
WORKDIR /data
ENTRYPOINT /bin/bash -l -c "jekyll build --destination=/var/www/html"
