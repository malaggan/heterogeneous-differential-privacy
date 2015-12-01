default: all
.PHONY: all TAGS
CPPFLAGS	:=
CXX				:= g++
CXXFLAGS	:= -std=c++14
LDFLAGS		:= -lpthread -lrt -luuid -ldl
WARN			:= -Wextra -pedantic -Wall -Wold-style-cast -Wc++14-compat
OPT				:= -O3
DEBUG			:= -g0 #gdb3 -D_GLIBCXX_DEBUG
BIN				:= analyse
src				 =$(wildcard *.cc)
obj				 =$(patsubst %.cc,%.o,$(src))



all: $(BIN) TAGS

TAGS:
	etags *.cc *.hh *.tcc

$(BIN): $(obj)
	$(CXX) $^ $(LDFLAGS)  -o $@

%.o : %.cc
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $(WARN) $(OPT) $(DEBUG) $(SAN) $< -c -MMD -MF $*.d -MT $*.o -MT $*.d  -o $@

clean:
	-rm $(BIN)
	-rm *.o
	-rm *.d

-include $(wildcard *.d)
