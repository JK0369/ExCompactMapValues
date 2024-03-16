//
//  ViewController.swift
//  ExOperator
//
//  Created by 김종권 on 2024/03/16.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        sample1()
        sample2()
    }
    
    func sample1() {
        // bad
        print(6 % 3 == 0) // true
        
        // good
        print(6.isMultiple(of: 3)) // true
    }
    
    func sample2() {
        let dictionary = ["a": "1", "b": "2", "c": "three"]
        
        // bad
        var convertedDictionary1 = [String: Int]()
        dictionary
            .forEach {
                if let val = dictionary[$0.key], let int = Int(val) {
                    convertedDictionary1[$0.key] = int
                }
            }
        print(convertedDictionary1) // ["a": 1, "b": 2]
        
        // good
        let convertedDictionary2 = dictionary.compactMapValues { Int($0) }
        print(convertedDictionary2) // ["a": 1, "b": 2]
    }
}
