NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC = ft_printf.c \
	ft_printf_unite.c \
	ft_adress.c

OBJ = $(SRC:%.c=%.o)

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ) : ft_printf.h

clean :
	rm -rf $(OBJ)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re.