NAME = 	race04

SRCS = 	src/mx_error_checker.c \
		src/mx_isspace.c \
		src/mx_printmass.c \
		src/main.c \
		src/mx_oper.c \
		src/mx_printstr.c \
		src/math.c \
		src/mx_param.c \
		src/mx_strlen.c \
		src/mx_atoi.c \
		src/mx_printchar.c \
		src/mx_strnew.c \
		src/mx_file_to_str.c \
		src/mx_printerr.c \
		src/mx_char_validator.c \
		src/mx_isdigit.c \
		src/mx_printint.c

INC = 	inc/header.h

CFLAGS = -std=c11 -Wall -Wextra -Werror -Wpedantic
all: $(NAME)

$(NAME): install clean

install:
	@cp $(SRCS) .
	@cp $(INC) .
	@clang $(CFLAGS) -o $(NAME) $(SRCS) -I inc

uninstall: clean
	@rm -rf $(NAME)

clean:
	@rm -rf header.h
	@rm -rf mx_error_checker.c \
			mx_isspace.c \
			mx_printmass.c \
			main.c \
			mx_oper.c \
			mx_printstr.c \
			math.c \
			mx_param.c \
			mx_strlen.c \
			mx_atoi.c \
			mx_printchar.c \
			mx_strnew.c \
			mx_file_to_str.c \
			mx_printerr.c \
			mx_char_validator.c \
			mx_isdigit.c \
			mx_printint.c

reinstall: all 
