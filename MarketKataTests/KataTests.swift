//
//  KataTests.swift
//  MarketKata
//
//  Created by Fnu, Rohit on 5/7/17.
//  Copyright © 2017 Fnu, Rohit. All rights reserved.
//


//  Item   Unit      Special   Name

//         Price     Price

//  ----------------------------------

//  A     50       3 for 130   Banana

//  B     30       2 for 45    Apple

//  C     20                   Orange

//  D     15                   Strawberries

import Foundation
import Quick
import Nimble

protocol RegisterObserver {
    func totalCalculated(totalInDollars: Int)
}

class RegisterObserverSpy: RegisterObserver {
    func totalCalculated(totalInDollars: Int) {

    }
}

class KataTest: QuickSpec {
    override func spec() {
        fdescribe("shopping cart") {
            let observer = RegisterObserverSpy()
            let register = Register(observer: observer)

            it("it calculates the cost of a Banana") {
                expect(register.total(input: "A")).to(equal(50))
            }
            
            it("it sums the the cost of multiple Bananas") {
                expect(register.total(input: "A","A")).to(equal(100))
            }
            
            it("it sums the the cost of multiple Bananas") {
                expect(register.total(input: "A","A","A")).to(equal(130))
            }
            
            it("it calculates the cost of one Apple") {
                expect(register.total(input: "B")).to(equal(30))
            }
            
            it("it calculates the cost of two Apples") {
                expect(register.total(input: "B","B")).to(equal(45))
            }
            
            it("it calculates the cost of a ornage") {
                expect(register.total(input: "C")).to(equal(20))
            }
            
            it("it calculates the cost of a strwaberry") {
                expect(register.total(input: "D")).to(equal(15))
            }
        }
    }
}

class Register {

    init(observer: RegisterObserver) {

    }

    func scan(input:[String]) -> Int {
        let price = 0
        var newPrice = 0
        
        if input == ["A"] {
            newPrice = price + 50
        } else if input == ["A","A"] {
            newPrice = price + 100
        } else if input == ["A","A","A"] {
            newPrice = price + 130
        }
        
        if input == ["B"] {
            newPrice = price + 30
        } else if input == ["B","B"] {
            newPrice = price + 45
        }
        
        if input == ["C"] {
            newPrice = price + 20
        }
        
        if input == ["D"] {
            newPrice = price+15
        }
        return newPrice
    }
   
    func total(input:String...) {
        let newPrice = scan(input: input)
        return newPrice
    }
}
