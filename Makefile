# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jsalaber <jsalaber@student.42urduliz.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/09 11:18:09 by jsalaber          #+#    #+#              #
#    Updated: 2024/01/10 13:20:18 by jsalaber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_print_conversion.c ft_printf.c \

OBJS = $(SRCS:%.c=%.o)

CFLAGS = -Wall -Wextra -Werror

all : $(NAME)

$(OBJS): %.o:%.c
	@cc -c $(CFLAGS) $< -o $@

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)

clean:
	@rm -rf $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re