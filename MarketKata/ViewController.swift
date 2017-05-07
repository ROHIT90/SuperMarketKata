//
//  ViewController.swift
//  MarketKata
//
//  Created by Fnu, Rohit on 5/7/17.
//  Copyright © 2017 Fnu, Rohit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        total()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scan(input: String) {
        
    }
    
    func total() -> Int {
        var input =  scan(input: "A")
        print("*****************\(input)")
        return 50
    }

}

