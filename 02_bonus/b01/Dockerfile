# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/20 13:03:56 by amurtone          #+#    #+#              #
#    Updated: 2020/01/20 13:29:01 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM kalilinux/kali-linux-docker

LABEL maintainer="amurtone <amurtone@student.42.fr>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean
RUN apt-get -y install git zsh wget

RUN apt-get -y install emacs nano kali-linux-top10

ENV TERM xterm
# set the zsh theme
ENV ZSH_THEME zhann
# run the installation script  
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
# start zsh
CMD [ "zsh" ]

# **************************************************************************** #
# How to build it?
# docker build -t b01 .

# How to run it?
# docker run --rm -ti b01