//
//  main.swift
//  Ejercicio3-FinanzasDePachulin
//
//  Created by Ansël E. Corona Coste on 4/14/17.
//  Copyright © 2017 Ansël E. Corona Coste. All rights reserved.
//

import Foundation


func average(meses: [Double]) -> Double {
    
    var total = 0.0
    //use the parameter-array instead of the global variable votes
    for mes in meses{
        
        total += Double(mes)
        
    }
    
    let totalmeses = Double(meses.count)
    let average = total/totalmeses
    return average
}

var Meses : [Double] = [];
for i in 0 ..< 12{
    var input : Double = Double(readLine()!)!
    Meses.append(input)
}
let start : Date = NSDate() as Date
let avg = average(meses: Meses)
let end = NSDate()
let time : Double = end.timeIntervalSince(start)
print("$" + String(avg))
print(time)
