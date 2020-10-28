
CC=nvcc


all: pcimem

pcimem: pcimem.o
	$(CC) -L/usr/local/cuda/lib64 -O0 $^ -o $@ 

pcimem.o: pcimem.cu
	$(CC) -c -O0  $<


clean:
	-rm -f *.o *~ core pcimem
