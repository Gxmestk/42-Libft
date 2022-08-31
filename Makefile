# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkhemniw <gt.khemniwat@gmail.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/27 14:19:44 by tkhemniw          #+#    #+#              #
#    Updated: 2022/09/01 02:14:44 by tkhemniw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
#$(shell find . -name '*.c')
SRCS := ft_atoi.c ft_isascii.c ft_memcmp.c ft_strchr.c ft_strlen.c \
				ft_substr.c ft_bzero.c ft_isdigit.c ft_memcpy.c ft_strdup.c \
				ft_strncmp.c ft_tolower.c ft_calloc.c ft_isprint.c ft_memmove.c \
				ft_strjoin.c ft_strnstr.c ft_toupper.c ft_isalnum.c \
				ft_memset.c ft_strlcat.c ft_strrchr.c ft_isalpha.c ft_memchr.c \
				ft_strlcpy.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
				ft_striteri.c

BONUS_SRCS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
				ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS := $(SRCS:.c=.o)

BONUS_OBJS	=	$(BONUS_SRCS:.c=.o)

all: $(NAME)

bonus: $(NAME) $(BONUS_OBJS) 
		ar rcs $(NAME) $(BONUS_OBJS)

.c.o:
	gcc -Wall -Wextra -Werror -c $< -o $(<:.c=.o)
#above =  $(SRCS) no bonus
$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)
clean:
	rm -f $(OBJS) $(BONUS_OBJS)
fclean: clean	
	rm -f $(NAME)
re: fclean all
