import time
print("Digite su balance de cierre para cada uno de los ultimos doce meses:")

balance = 0.0

def avg(myList = []):
    sum = 0.0
    for x in myList:
        sum = sum + x
    return (sum/12)

number = []
for x in range(0, 12):
    number.append(float(input("")))


start_time = time.time()
balance = avg(number)
print("$%.2f" % balance)
total = time.time() - start_time
print ("%f" % total)
