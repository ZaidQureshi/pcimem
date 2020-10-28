
CC=nvcc


all: pcimem

pcimem: pcimem.o
	$(CC) -O0 $^ -o $@ 

pcimem.o: pcimem.cu
	$(CC) -c -O0  $<


clean:
	-rm -f *.o *~ core pcimem
