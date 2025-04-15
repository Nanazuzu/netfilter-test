#Makefile
all: nfqnl_test

nfqnl_test: nfqnl_test.o
	g++ -o nfqnl_test nfqnl_test.o -lnetfilter_queue

nfqnl_test.o: nfqnl_test.c
	g++ -c -o nfqnl_test.o nfqnl_test.c -lnetfilter_queue

clean:
	rm -f nfqnl_test
	rm -f *.o
