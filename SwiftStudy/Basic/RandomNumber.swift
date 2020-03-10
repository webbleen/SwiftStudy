//
//  RandomNumber.swift
//  SwiftStudy
//
//  Created by WENBIN.LI on 3/10/20.
//  Copyright © 2020 webbleen. All rights reserved.
//

import Foundation


let random1 = Int(arc4random() % 100) + 1

let random2 = Int(arc4random_uniform(100)) + 1
