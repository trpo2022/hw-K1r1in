
targ = main
CC = gcc
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

$(targ) : $(OBJ)
	$(CC) $(OBJ) -o $(targ)
	
%.o : %.c
	$(CC) -c $< -o $@
	
clean : 
	rm $(targ) *.o
