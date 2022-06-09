# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wricky-t <wricky-t@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/26 14:05:02 by wricky-t          #+#    #+#              #
#    Updated: 2022/06/09 10:55:25 by wricky-t         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		:= libft.a

SRCS 		:= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
			ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c \
			ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
			ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c \
			ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
			ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
			ft_putnbr_fd.c \

OBJS 		:= $(SRCS:.c=.o)

BONUS_SRCS	:= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c \

BONUS_OBJS	:= $(BONUS_SRCS:.c=.o)

HEADER 		:= libft.h

CC 			:= gcc

AR			:= ar -crs

CFLAGS 		?= -Wall -Wextra -Werror

all: $(NAME)
	@echo "${BL}🅛 🅘 🅑 ${GR}🅕 🅣${DF}"
	@echo "${YL}Updated!${DF}"

$(NAME): $(OBJS)
	@${AR} $@ $^
	@echo "${GR}libft.a created!${DF}"

bonus: $(BONUS_OBJS)
	@${AR} ${NAME} $^
	@echo "${GR}bonuses created!${DF}"

%.o: %.c ${HEADER}
	@${CC} ${CFLAGS} -c $<
	@echo "compiling $<.... \t${GR}✓${DF}"

clean:
	@rm -f *.o
	@echo "${BL}object files deleted!${DF}"

fclean: clean
	@rm -f $(NAME)
	@echo "${BL}libft.a deleted!${DF}"

re: fclean all

.PHONY: clean fclean re

# styling
BL	:= \033[1;94m
GR 	:= \033[1;92m
YL	:= \033[1;93m
DF	:= \033[0m
IT	:= \e[3m