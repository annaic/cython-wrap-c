.PHONY : build
build:
#'build_ext' is a command for building C/C++ extensions, and -if flags are used to force a
# build of these extensions and copy them to the source directory respectively from the Python setuptools
	python setup.py build_ext -if

.PHONY : run
run:build
	python run_cfib.py 35 3

.PHONY : clean
clean:
	-rm -r build *.so wrap_fib.c
