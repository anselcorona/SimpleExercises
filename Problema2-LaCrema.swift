//
//  main.swift
//  Ejercicio2-LaCrema
//
//  Created by Ansël E. Corona Coste on 4/14/17.
//  Copyright © 2017 Ansël E. Corona Coste. All rights reserved.
//

//: Playground - noun: a place where people can play

import Cocoa
import Foundation



var strings: [String] = []

print("Ingrese la cantidad de palabras: ")
let num : Int! = Int(readLine()!)
var i = 0;
while(i<num!){
    strings.append(readLine()!)
    i += 1
}
let start = NSDate()
for i in 0 ..< strings.count{
    var charcount = strings[i].characters.count
    if charcount>10{
        var result : String! = ""
        result.append(strings[i][strings[i].characters.startIndex])
        result.append(String(charcount-2))
        result.append(strings[i][strings[i].characters.index(before: strings[i].characters.endIndex)])
        strings[i] = result;
    }
}

for string in strings{
    print(string)
}
let end = NSDate()
let time: Double = end.timeIntervalSince(start as Date)

print(time)
