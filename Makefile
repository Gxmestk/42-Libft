# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkhemniw <gt.khemniwat@gmail.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/27 14:19:44 by tkhemniw          #+#    #+#              #
#    Updated: 2022/09/03 09:35:56 by tkhemniw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS_DIR = src/
INCS_DIR = includes/
OBJS_DIR = obj/

SRCS = ft_atoi.c ft_isascii.c ft_memcmp.c ft_strchr.c ft_strlen.c \
	   ft_substr.c ft_bzero.c ft_isdigit.c ft_memcpy.c ft_strdup.c \
	   ft_strncmp.c ft_tolower.c ft_calloc.c ft_isprint.c ft_memmove.c \
	   ft_strjoin.c ft_strnstr.c ft_toupper.c ft_isalnum.c \
	   ft_memset.c ft_strlcat.c ft_strrchr.c ft_isalpha.c ft_memchr.c \
	   ft_strlcpy.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
	   ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	   ft_striteri.c

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			 ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			 ft_lstmap.c

OBJS = $(addprefix $(OBJS_DIR), $(SRCS:.c=.o))
BONUS_OBJS = $(addprefix $(OBJS_DIR), $(BONUS_SRCS:.c=.o))

CC = gcc
CFLAGS = -Wall -Wextra -Werror -I$(INCS_DIR)

all: $(NAME)

$(OBJS_DIR):
	mkdir -p $(OBJS_DIR)

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c | $(OBJS_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

clean:
	rm -rf $(OBJS_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
