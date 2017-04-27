//
//  main.swift
//  Ejercicio7-FibonacciRecursivo
//
//  Created by Ansël E. Corona Coste on 4/14/17.
//  Copyright © 2017 Ansël E. Corona Coste. All rights reserved.
//

import Foundation

func fibonacci(_ i: Int) -> Int {
    if i <= 2 {
        return 1
    } else {
        return fibonacci(i - 1) + fibonacci(i - 2)
    }
}
let start : Date = NSDate() as Date
print(fibonacci(10))
let end : Date = NSDate() as Date
let time : Double = end.timeIntervalSince(start)

print(time)
