# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkhemniw <gt.khemniwat@gmail.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/27 14:19:44 by tkhemniw          #+#    #+#              #
#    Updated: 2022/08/31 21:18:06 by tkhemniw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS := $(shell find . -name '*.c')

OBJS := $(SRCS:.c=.o)

all: $(NAME)

.c.o:
	gcc -Wall -Wextra -Werror -c $< -o $(<:.c=.o)
#$(SRCS)< -o $(<:.c=.o)
$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean all