# This is a template of using decorator.
# Author: Hsiang-Chun Yang
from functools import wraps

# A decorator has function passed in as argument, and
# a wrapper that wraps the function in some way you 
# want it to be. For the `@decorator` to get the
# wrapper, you have to return the wrapper.
def decorator(func):
    # @wraps() is a decorator itself!
    # It copies the informations in function, so
    # you can use them in wrapper().
    @wraps(func) 
    def wrapper(*args, **kwargs):
        print("before func:", func.__name__)
        ret = func(*args, **kwargs)
        print("after func:",func.__doc__)
        return ret
    return wrapper

@decorator
def function_null():
    print("function do nothing.")
    
@decorator
def function_adder(a, b):
    print("a:", a)
    print("b:", b)
    print(a+b)    
 
function_null()
function_adder(3,5)