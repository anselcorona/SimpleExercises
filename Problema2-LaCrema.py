import time
strings = []

print("Ingrese la cantidad de palabras: ")
num = int(input(""))
i = 0
while (i < num):
    chars = raw_input("")
    strings.append(chars)
    i += 1

start = time.time()
for i in range(0, num):
    charcount = len(strings[i])
    if charcount >= 10:
        result = str(strings[i][0]) + str(charcount-2) + str(strings[i][-1])
        strings[i] = "%s" % result


for string in strings:
    print(string)
time = time.time()-start
print(time)

