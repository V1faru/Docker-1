# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amurtone <amurtone@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/15 10:37:43 by amurtone          #+#    #+#              #
#    Updated: 2020/01/16 09:40:12 by amurtone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ft-rails:on-build
EXPOSE 3000
CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

# **************************************************************************** #
# to build:
# first : docker build -t ft-rails:on-build .
# docker build -t ex02 .
# docker run -it --rm -p 3000:3000 ex02
# ft-rails:on-build needs to be an existing image first
# Everything starting with ONBUILD in that image's dockerfile  will run right
# after the FROM
# 's' is an alias for 'server',
# -b binds an IP address
# -p specifies port
# source for ruby app: https://bitbucket.org/railstutorial/sample_app_4th_ed/src/master/