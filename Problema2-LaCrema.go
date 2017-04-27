package main

import (
    "fmt";
    "time";
    "strconv"
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
   for _, value:= range strings{
		length := len([]rune(value))
    if length>10 {
      var result string
      result += string(value[0])
      result += strconv.Itoa(length-2)
      result += string(value[length-1])
      println(result)
    } else {
      println(value)
    }
	 }
   elapsed := time.Now().Sub(start).Seconds()
   println(elapsed)
   if err != nil {
       panic(err)
   }
}