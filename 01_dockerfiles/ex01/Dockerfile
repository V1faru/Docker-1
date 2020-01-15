# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/15 08:13:22 by amurtone          #+#    #+#              #
#    Updated: 2020/01/15 10:37:26 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian

ENV TS3SERVER_LICENSE=accept

WORKDIR /home/teamspeak

EXPOSE 9987/udp 10011 30033

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
    wget http://dl.4players.de/ts/releases/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2 && \
    tar -xvf teamspeak3-server_linux_amd64-3.8.0.tar.bz2

ENTRYPOINT ["./teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# to build:
# docker build -t ex01 .
# to run:
# docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01 
#------------------------------------------------------------------------------#
# to configure so it works on local network:
# run:
# docker-machine stop Char
# go to virtual box > settings > network
# select adapter 3.
# 1. enable
# 2. attached to: Bridged Adapter
# 3. advanced: adapter type: Interl PRO/1000 MT Desktop (82540EM)
# run:
# docker-machine start Char
# docker-machine regenerate-certs Char
# docker-machine ssh Char
# ifconfig -a (get the ip of eth2 : this network maked the local machine 
# host available from the whole network)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#