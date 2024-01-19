# This is an implementation of logger using decorators.
# Author: Hsiang-Chun Yang
from functools import wraps
import sys

def logit(logfile=""):
    def logit_decorator(func):
        @wraps(func)
        def wrapper(*args, **kwargs):
            original_stdout = sys.stdout # Save a reference to the original standard output
            log_info = "--- func " + func.__name__ + " ---"
            
            # if no file, print to screen
            if logfile == "":
                print(log_info)
                ret = func(*args, **kwargs)
            else:
                with open(logfile, 'w') as f:
                    sys.stdout = f
                    f.write(log_info + "\n")
                    ret = func(*args, **kwargs)
            
            sys.stdout = original_stdout
            return ret
        return wrapper
    return logit_decorator

@logit(logfile="")
def adder(a, b):
    print(a, b, a + b)
    return a + b

adder(1, 2)


        
        