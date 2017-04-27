
package main
 
import (
    "fmt";
    "time"
)
 
func fib(n int) int {
    if n == 0 {
        return 0
    } else if n == 1 {
		return 1
	} else {
		return fib(n-1) + fib(n-2)
	}
}

func main() {
    start := time.Now()
	n := int(10)
	fmt.Println(fib(n))
    elapsed := time.Now().Sub(start).Seconds()
    println(elapsed)
}