# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alopez-g <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 17:46:30 by alopez-g          #+#    #+#              #
#    Updated: 2020/08/09 17:09:53 by alopez-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GNL_DIR		=	srcs/

GNL_INC		=	includes/

SRCS		=	${GNL_DIR}get_next_line.c ${GNL_DIR}get_next_line_utils.c
SRCS_BONUS	=	${GNL_DIR}get_next_line_bonus.c ${GNL_DIR}get_next_line_utils_bonus.c
OBJS		= 	$(patsubst %.c, %.o, ${SRCS})
OBJS_BONUS	=	$(patsubst %.c, %.o, ${SRCS_BONUS})

NAME		=	libgnl.a

%.o : %.c
				clang -Wall -Werror -Wextra -I $(GNL_INC) -c $< -o $@

${NAME}:		${OBJS}
				ar -rc ${NAME} ${OBJS}
				ar -s ${NAME}
				
all:			${NAME}
bonus:			${OBJS_BONUS}
				ar -rc ${NAME} ${OBJS_BONUS}
				ar -s ${NAME}
clean:
				rm -f ${OBJS} ${OBJS_BONUS}
fclean:			clean
				rm -f ${NAME}
re:				fclean all
.PHONY:			all clean fclean re bonus
