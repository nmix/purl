FROM phusion/passenger-ruby23:0.9.19
LABEL maintainer="nn.mikh@yandex.ru"

ENV LANG C.UTF-8
ENV HOME /root
ENV RAILS_ENV production

CMD ["/sbin/my_init"]

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt-get update && \
	apt-get install yarn && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /home/app/purl
WORKDIR /home/app/purl

COPY Gemfile* ./
# COPY vendor/cache ./vendor/cache
# RUN bundle install --local
RUN bundle install --without development test --jobs 5

COPY . .

COPY config/secrets.yml.example config/secrets.yml
COPY config/database.yml.example config/database.yml

RUN bin/rails assets:precompile

COPY config/nginx-server.conf /etc/nginx/sites-enabled/purl.conf
COPY config/nginx-maind.conf /etc/nginx/main.d/purlenv.conf

RUN rm /etc/nginx/sites-enabled/default
RUN rm -f /etc/service/nginx/down

# VOLUME ["/home/app/purl/public/files", "/home/app/purl/db"]
EXPOSE 80
