default: all
.PHONY: all TAGS

CXX = g++

CXXFLAGS:= -std=c++14 #-mmpx
LDFLAGS := #-lmpxwrappers

WARN := -Wextra -pedantic -Wall -Wold-style-cast -Wc++14-compat # -Werror
OPT  := -O0
DEBUG:= -ggdb3 #-fcheck-pointer-bounds # -D_GLIBCXX_DEBUG 
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
