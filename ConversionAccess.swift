//
//  ConversionAccess.swift
//  Cooks Converter
//
//  Created by Grace Thompson on 5/14/15.
//  Copyright (c) 2015 Grace Thompson. All rights reserved.
//

import Foundation
import UIKit

struct ConversionAccess {
    static var amount: String!
    static var measurementType: String!
    
    static var measurements = ["tsp" : [1, 1/3, 1/48, 1/96, 1/192, 1/768, 1/6],
        "tbsp" : [3, 1, 1/16, 1/32, 1/64, 1/256, 1/2],
        "cup" : [48, 16, 1, 1/2, 1/4, 1/16, 8],
        "pint" : [96, 32, 2, 1, 1/2, 1/8, 16],
        "quart" : [192, 64, 4, 2, 1, 1/4, 32],
        "gallon" : [768, 256, 16, 8, 4, 1, 128],
        "floz" : [6, 2, 1/8, 1/16, 1/32, 1/128, 1]
    ]
}