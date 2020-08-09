# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alopez-g <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 17:46:30 by alopez-g          #+#    #+#              #
#    Updated: 2020/08/09 23:28:24 by alopez-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GNL_DIR		=	srcs/

GNL_INC		=	includes/

SRCS	=	${GNL_DIR}get_next_line.c
OBJS	=	$(patsubst %.c, %.o, ${SRCS})

NAME		=	libgnl.a

%.o : %.c
				clang -Wall -Werror -Wextra -I $(GNL_INC) -c $< -o $@

${NAME}:		${OBJS}
				ar -rc ${NAME} ${OBJS}
				ar -s ${NAME}
				
all:			${NAME}
clean:
				rm -f ${OBJS}
fclean:			clean
				rm -f ${NAME}
re:				fclean all
.PHONY:			all clean fclean re
