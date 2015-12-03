default: all
.PHONY: all TAGS

CXX = g++ # /home/malaggan/opt/bin/g++
#export SHELL := /usr/bin/bash
#export PATH := /home/malaggan/opt/bin:$(PATH)
CXXFLAGS:= -std=c++14 #-mmpx
LDFLAGS := -lboost_program_options -lboost_filesystem -lboost_system #-lmpxwrappers

WARN := -Wextra -pedantic -Wall -Wold-style-cast -Wc++14-compat # -Werror
OPT  := -O3 -march=native
DEBUG:= -g0 #-ggdb3 -D_GLIBCXX_DEBUG #-fcheck-pointer-bounds
#SAN  := -fsanitize=undefined -fno-sanitize-recover -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow  -fsanitize=bounds -fsanitize=alignment -fsanitize=object-size -fsanitize=vptr -fsanitize=leak -fsanitize=shift -fsanitize=integer-divide-by-zero -fsanitize=unreachable -fsanitize=vla-bound -fsanitize=null -fsanitize=return -fsanitize=signed-integer-overflow -fsanitize=bounds -fsanitize=alignment -fsanitize=object-size -fsanitize=nonnull-attribute -fsanitize=returns-nonnull-attribute -fsanitize=bool -fsanitize=enum -fsanitize=thread # -fsanitize=bounds-strict -fsanitize=address

src=$(wildcard *.cc)
obj=$(patsubst %.cc,%.o,$(src))

BIN := gossple

all: $(BIN) TAGS

TAGS:
	etags *.cc *.hh *.tcc

$(BIN): $(obj)
	$(CXX) $^ $(LDFLAGS)  -o $@

%.o : %.cc
	$(CXX) $(CXXFLAGS) $(WARN) $(OPT) $(DEBUG) $(SAN) $< -c -MMD -MF $*.d -MT $*.o -MT $*.d  -o $@

clean:
	-rm $(BIN)
	-rm *.o
	-rm *.d

-include $(wildcard *.d)
