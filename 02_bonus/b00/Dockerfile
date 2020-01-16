# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 15:13:27 by amurtone          #+#    #+#              #
#    Updated: 2020/01/16 15:35:16 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:latest

LABEL maintainer="amurtone <amurtone@student.42.fr>"

ARG USER_NAME="v1faru"
ARG USER_PASSWORD="L1l01234"
ENV USER_NAME $USER_NAME
ENV USER_PASSWORD $USER_PASSWORD
ENV CONTAINER_IMAGE_VER=v1.0.0
RUN echo $USER_NAME
RUN echo $USER_PASSWORD
RUN echo $CONTAINER_IMAGE_VER
RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential git \
    zsh nodejs wget emacs npm \
    && adduser --quiet --disabled-password --shell /bin/zsh --home /home/$USER_NAME --gecos "User" $USER_NAME \
    && echo "${USER_NAME}:${USER_PASSWORD}" | chpasswd && usermod -aG sudo $USER_NAME
# the user we're applying this too (otherwise it most likely install for root)
USER $USER_NAME
# terminal colors with xterm
ENV TERM xterm
# set the zsh theme
ENV ZSH_THEME zhann
# run the installation script  
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
# start zsh
CMD [ "zsh" ]

# **************************************************************************** #
# How to build it?
# docker build -t b00 .

# How to run it?
# docker run --rm -ti b00