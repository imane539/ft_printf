CFLAGS = -Wall -Werror -Wextra

SRC = libft/ft_putchar_fd.c \
libft/ft_putstr_fd.c \
libft/ft_putendl_fd.c \
libft/ft_putnbr_fd.c \
libft/ft_strncmp.c \
libft/ft_strlen.c \
ft_putunsigned.c \
ft_easy.c \
ft_medium.c \
ft_hard.c \
ft_hex.c \
ft_printf.c \
ft_format.c \
ft_check.c \
ft_address.c \

OBJECTS =$(SRC:.c=.o)
AR = ar rcs

NAME = libftprintf.a

all:$(NAME)

$(NAME):$(OBJECTS)
	$(AR) $(NAME) $^

clean :
	rm -f $(OBJECTS) 
	
fclean : clean 
	rm -f $(NAME)

re : fclean all

# .PHONY:re all fclean clean 

.SECONDARY : $(OBJECTS)