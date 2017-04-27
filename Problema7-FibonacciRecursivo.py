import time

def fib(n):
    if n <= 2:
        return 1
    else:
        return (fib(n-1)+fib(n-2))

start_time = time.time()
print (fib(10))
total = time.time() - start_time
print ("%f" % total)
