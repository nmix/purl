FROM phusion/passenger-ruby23:0.9.19
LABEL maintainer="nn.mikh@yandex.ru"

ENV LANG C.UTF-8
ENV HOME /root
ENV RAILS_ENV production

WORKDIR /usr/src/app

# Clean up APT when done.
# RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . .
COPY config/secrets.yml.example config/secrets.yml
COPY config/database.yml.example config/database.yml

RUN bundle install --local
RUN rails assets:precompile

RUN rm /etc/nginx/sites-enabled/default
RUN rm -f /etc/service/nginx/down

CMD ["/sbin/my_init"]
