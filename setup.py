from distutils.core import setup, Extension
from Cython.Build import cythonize

exts = Extension("wrap_fib",
                 sources=["cfib.c", "wrap_fib.pyx"])
setup(ext_modules=cythonize(exts))

