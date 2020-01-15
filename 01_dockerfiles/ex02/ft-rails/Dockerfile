# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/15 11:43:41 by amurtone          #+#    #+#              #
#    Updated: 2020/01/15 13:18:51 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby

RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3
#RUN gem install rails bundler
ONBUILD COPY app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN bundel install

ONBUILD RUN rake db:migrate

ONBUILD RUN rake db:seed

# **************************************************************************** #
# to build:
# docker build -t ft-railes:onbuild .