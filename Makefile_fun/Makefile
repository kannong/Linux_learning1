A = a b c
B = $(foreach f,$(A),$(f).o)
C = $(filter %.o,$(B))
D = ab a.c b.c c.c d.o
E = $(filter-out %.c,$(D))
F = $(wildcard *.c)
files =$(wildcard *.o)
files2 = $(patsubst %.c,%.d,$(D))

all:
	@echo B = $(B)
	@echo C = $(C)
	@echo E = $(E)
	@echo F = $(F)
	@echo files = $(files)
	@echo files2 = $(files2)