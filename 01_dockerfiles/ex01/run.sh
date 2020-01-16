#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 09:49:12 by amurtone          #+#    #+#              #
#    Updated: 2020/01/16 09:49:12 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo "Starting build..."
docker build -t ex01 .

echo "Build finished. Running..."
docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01

echo "Server is running. Connect with local client to $(docker-machine ip Char)."
echo "When finished, run \`docker stop teamspeak\`"