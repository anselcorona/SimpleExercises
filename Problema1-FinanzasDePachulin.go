package main

import (
    "fmt";
    "time"
)
func main() {
    var strings []string
    var err error
    var num int
    _, err = fmt.Scanf("%d\n", &num)
   for i := 0; i < num; i++ {
       var input string
       _, err = fmt.Scanf("%s\n", &input)
       strings = append(strings, input)
   }
   start := time.Now()
  
   for i, value:= range strings{
		if len(value)>10 {
      var result string
      char1 := value[0]
    }
	 }
   elapsed := time.Now().Sub(start).Seconds()
   println(elapsed)
   if err != nil {
       panic(err)
   }

}

/*
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

*/