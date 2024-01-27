NAME = libftprintf.a
FLAG = -Wall -Wextra -Werror
SRC = ft_functions.c \
	ft_printf.c

all: $(NAME)

$(NAME):
	gcc $(FLAG) -c $(SRC)
	ar rc $(NAME) ft_functions.o \
	ft_printf.o
clean:
	/bin/rm -f  ft_functions.o \
	ft_printf.o
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re