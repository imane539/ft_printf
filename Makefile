CFLAGS = -Wall -Werror -Wextra

LIB = libft/ft_isalpha.c \
libft/ft_isdigit.c \
libft/ft_isalnum.c \
libft/ft_isascii.c \
libft/ft_isprint.c \
libft/ft_strlen.c \
libft/ft_memset.c \
libft/ft_bzero.c \
libft/ft_strlcpy.c \
libft/ft_strlcat.c \
libft/ft_toupper.c \
libft/ft_tolower.c \
libft/ft_strchr.c \
libft/ft_strrchr.c \
libft/ft_strncmp.c \
libft/ft_strnstr.c \
libft/ft_atoi.c \
libft/ft_memcpy.c \
libft/ft_memmove.c \
libft/ft_memchr.c \
libft/ft_memcmp.c \
libft/ft_calloc.c \
libft/ft_strdup.c \
libft/ft_substr.c \
libft/ft_strjoin.c \
libft/ft_strtrim.c \
libft/ft_split.c \
libft/ft_itoa.c \
libft/ft_strmapi.c \
libft/ft_striteri.c \
libft/ft_putchar_fd.c \
libft/ft_putstr_fd.c \
libft/ft_putendl_fd.c \
libft/ft_putnbr_fd.c \
libft/ft_lstnew_bonus.c \
libft/ft_lstadd_front_bonus.c \
libft/ft_lstsize_bonus.c \
libft/ft_lstlast_bonus.c \
libft/ft_lstadd_back_bonus.c \
libft/ft_lstdelone_bonus.c \
libft/ft_lstclear_bonus.c \
libft/ft_lstiter_bonus.c \
libft/ft_lstmap_bonus.c \

SRC = ft_putunsigned.c \
ft_easy.c \
ft_medium.c \
ft_hard.c \
ft_hex.c \
ft_printf.c \
ft_format.c \
ft_check.c \
ft_address.c \

OBJECTS =$(SRC:.c=.o) $(LIB:.c=.o)

AR = ar rcs

NAME = libftprintf.a

all: $(NAME)


$(NAME):$(OBJECTS)
	$(AR) $(NAME) $^

clean :
	rm -f $(OBJECTS) 
	
fclean : clean 
	rm -f $(NAME)

re : fclean all

#.PHONY:re all fclean clean

.SECONDARY : $(OBJECTS)