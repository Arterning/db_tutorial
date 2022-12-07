CC=gcc
CFLAGS = -O3

# db: db.c
# 	gcc db.c -o db

db: db.o test.o
	$(CC) $(LFLAGS) -o $@ $?

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $?

run: db
	./db mydb.db

clean:
	rm -f db *.db *.o

test: db
	bundle exec rspec

format: *.c
	clang-format -style=Google -i *.c

