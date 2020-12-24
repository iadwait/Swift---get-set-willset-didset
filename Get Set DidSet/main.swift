//
//  main.swift
//  Get Set DidSet
//
//  Created by Adwait Barkale on 24/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation

print("Hello, World!")

class test
{
    var myProperty: Int = 0 {
        didSet{
            print("DidSet - Value of Property changed from \(oldValue) to \(myProperty)")
        }
    }
    
    var myPropertyValue: Int = 0
    var myProperty1: Int {
        get { return myPropertyValue }
        set {
            print("The value of myProperty changed from \(myPropertyValue) to \(newValue)")
            myPropertyValue = newValue
        }
    }
    
    var myProperty2 : Int = 0 {
        willSet{
            print("Will Set Called myProperty2 = \(myProperty2)")
        }didSet{
            print("Did Set Called myProperty2 = \(myProperty2)")
        }
    }
    
    
    func changeValue()
    {
        myProperty = 10
        myProperty1 = 20
        myProperty2 = 30
    }
    
}

let obj1 = test()
obj1.changeValue()
