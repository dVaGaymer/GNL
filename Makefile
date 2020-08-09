# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alopez-g <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 17:46:30 by alopez-g          #+#    #+#              #
#    Updated: 2020/08/10 00:16:08 by alopez-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



GNL_DIR		=	srcs/
LIBFT_DIR	=	srcs/Libft/
ifneq "${VAR_LIBFT_DIR}" ""
LIBFT_DIR 	=	${VAR_LIBFT_DIR}
endif

GNL_INC		=	includes/
LIBFT_INC	=	${LIBFT_DIR}includes/s

SRCS	=	${GNL_DIR}get_next_line.c
OBJS	=	$(patsubst %.c, %.o, ${SRCS})

LIBFT_A		=	${LIBFT_DIR}libft.a
NAME		=	libgnl.a

%.o : %.c
				clang -Wall -Werror -Wextra -I $(GNL_INC) -I $(LIBFT_INC) -c $< -o $@

${NAME}:		${OBJS}
				make -C ${LIBFT_DIR}
				cp ${LIBFT_A} ${NAME}
				ar -rc ${NAME} ${OBJS}
				ar -s ${NAME}
				
all:			${NAME}
bonus:			all
clean:
				make -C ${LIBFT_DIR} clean
				rm -f ${OBJS} ${OBJS_BONUS}
fclean:			clean
				rm -f ${LIBFT_A}
				rm -f ${NAME}
re:				fclean all
.PHONY:			all clean fclean re bonus
