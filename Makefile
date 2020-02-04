# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mgena <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/05 15:35:59 by mgena             #+#    #+#              #
#    Updated: 2020/02/04 18:35:33 by mgena            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a
CFILE=ft_itoa_base.c ft_printf.c ldbl_extract.c rounding.c type_i_d.c ft_for_p.c ft_new.c ldbl_copy.c long_math.c percent.c type_c.c type_s.c ft_abortalloc.c ft_atoi.c ft_atol.c ft_bzero.c ft_countdigits.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_strcat.c ft_strchr.c ft_strclen.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c ft_wordcount.c 
OFILE=$(CFILE:%.c=%.o)
CC= gcc -Iincludes -Wall -Wextra -Werror
INCL=$(addprefix includes/, ldbl_header.h libft.h libft_printf.h)
VPATH= . ft_printf includes

all: $(NAME)

$(NAME): $(OFILE)
	ar rc $@ $^
	ranlib $(NAME)
%.o: %.c 
	$(CC) -c $< -o $@
	
clean: 
	rm -f $(OFILE) $(PRINTFOFILE)
fclean: clean
	rm -f $(NAME)

re: fclean all
