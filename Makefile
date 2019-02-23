PROGRAM = point_area
CFLAGS = -Wall -g -std=c99 -O0
LDLIBS = -lm

default: bin/$(PROGRAM)

bin/$(PROGRAM): bin/$(PROGRAM).o
	$(CC) $^ $(LDLIBS) -o $@

bin/$(PROGRAM).o: src/main.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -fv bin/*.o bin/$(PROGRAM)
