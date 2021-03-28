CC = cc -std=c99 -Wall -ledit -lm
DEP = mpc.c
EXE = lispy.exe

.PHONY: phony

default: build

build: $(EXE)

%.exe: %.c
	$(CC) $(DEP) $< -o $@

clean:
	rm -f $(EXE)
