.PHONY: fake clean
sharelib: libtest.so
	gcc -L./ -Wl,-rpath=./ -o sharelib main.c -ltest
libtest.so: test.c
	gcc -fPIC -shared -o libtest.so test.c
fake: test.c
	gcc -fPIC -shared -o libtest.so fake.c
clean:
	rm sharelib libtest.so
