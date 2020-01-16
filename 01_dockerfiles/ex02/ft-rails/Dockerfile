# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/15 11:43:41 by amurtone          #+#    #+#              #
#    Updated: 2020/01/16 09:38:43 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby:latest

LABEL maintainer="amurtone <amurtone@student.42.fr>"

RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs \
    sqlite3 gem
RUN gem install bundler --version 1.16.2
RUN gem install rails
RUN gem install rake --version 12.3.1
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN rake _12.3.1_ db:migrate
ONBUILD RUN rake _12.3.1_ db:seed

# **************************************************************************** #
# to build:
# docker build -t ft-rails:on-build .
# db:migrate and db:seed ->
# https://dev.to/neshaz/how-to-use-rake-db-commands-in-the-correct-way--50o2
# i use rake version 12.3.1 beacuse the ruby app has gems that require it.