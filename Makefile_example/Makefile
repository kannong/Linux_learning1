objs = a.o b.o c.o
dep_files := $(patsubst %.o,.%.d,$(objs))
dep_files := $(wildcard$(dep_files))

CFLAGS = -Werror -Iinclude
test: $(objs)
	gcc -o test $^
	@echo dep_files = $(dep_files)

ifneq ($(dep_files),)
include $(dep_files)
endif

%.o: %.c
	gcc -c -o $@ $< -MD -MF .$@.d
clean:
	rm *.o test
distclean:
	rm $(dep_files)

.PHONY: clean
	