# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 09:40:45 by amurtone          #+#    #+#              #
#    Updated: 2020/01/16 11:41:58 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:latest

LABEL maintainer="amurtone <amurtone@student.42.fr>"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates openssh-server wget postfix

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh && apt-get install -y gitlab-ce

RUN apt update && apt install -y tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

# **************************************************************************** #
# awesome dockerfile
# https://github.com/wsargent/docker-cheat-sheet#dockerfile
# https://kapeli.com/cheat_sheets/Dockerfile.docset/Contents/Resources/Documents/index
# guide to Running Your Own Gitlab On Docker - Community Edition:
# https://medium.com/@1997corry/running-your-own-gitlab-on-docker-community-edition-39c4a8f99553
# for which ports to open:
# https://docs.gitlab.com/omnibus/package-information/defaults.html
# -----------------------------------------------------------------------------#
# issue fixes:
# third RUN to fix issue:
# https://gitlab.com/gitlab-org/omnibus-gitlab/issues/2229
# this was added (/opt/gitlab/embedded/bin/runsvdir-start &) to fix issue:
# https://gitlab.com/gitlab-org/omnibus-gitlab/issues/430
# "tail -f /dev/null" - added as the last command otherwise gitlab wil shut down.
# docker does not keep containers running for 
# background processes when we run it in detached -d mode.
# -----------------------------------------------------------------------------#
# How to build it?
# docker build -t ex03 .

# How to run it?
# docker run -it --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged ex03
# **************************************************************************** #