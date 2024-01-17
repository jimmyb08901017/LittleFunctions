from functools import wraps


def decorator(func):
    @wraps(func) # this copys the info of func
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