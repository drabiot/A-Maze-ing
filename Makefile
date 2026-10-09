# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchartie <tchartie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/10/09 14:59:53 by tchartie          #+#    #+#              #
#    Updated: 2026/10/09 15:22:06 by tchartie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#=========== COLOR ============#

BASE_COLOR 			=	\033[0;39m
GRAY 				=	\033[0;90m
RED 				=	\033[0;91m
GREEN 				=	\033[0;92m
YELLOW 				=	\033[0;93m
BLUE 				=	\033[0;94m
MAGENTA				=	\033[0;95m
CYAN 				=	\033[0;96m
WHITE				=	\033[0;97m

install:
	@uv venv
	@VIRTUAL_ENV=.venv uv pip install -r requirements.txt
	@echo "$(YELLOW)Environment setup$(BASE_COLOR)"

run:

debug:

clean:
	@rm -rf .venv .mypy_cache __pycache__
	@echo "$(BLUE)Temporary files cleaned!$(BASE_COLOR)"

lint:
	@flake8
	@mypy . --warn-return-any --warn-unused-ignores --ignore-missing-imports --disallow-untyped-defs --check-untyped-defs

lint-strict:
	@flake8
	@mypy . --strict

.PHONY:		install run debug clean lint lint-strict
