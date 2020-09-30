# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alopez-g <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 17:46:30 by alopez-g          #+#    #+#              #
#    Updated: 2020/08/10 00:44:37 by alopez-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT_INC	=	$(LIBFT_DIR)includes/ 
GNL_INC		=	${GNL_DIR}includes/

SRCS_DIR	=	${GNL_DIR}srcs/

SRCS		=	${SRCS_DIR}get_next_line.c
OBJS		=	$(patsubst %.c, %.o, ${SRCS})

NAME		=	libgnl.a

%.o : %.c
			clang -Wall -Werror -Wextra -I $(GNL_INC) -I $(LIBFT_INC) -c $< -o $@

${NAME}:		${OBJS}
				ar -rc ${NAME} ${OBJS}
				ar -s ${NAME}
				
all:			${NAME}
bonus:			all
clean:
				rm -f ${OBJS} ${OBJS_BONUS}
fclean:			clean
				rm -f ${NAME}
re:				fclean all
.PHONY:			all clean fclean re bonus
