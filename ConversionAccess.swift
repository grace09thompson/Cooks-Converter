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
    
    static var measurements = ["tsp" : [1.0, 0.3333333333333, 0.0208333, 0.01041667, 0.00520833, 0.00130208, 0.166666667],
        "tbsp" : [3.0, 1.0, 0.0625, 0.03125, 0.015625, 0.00390625, 0.5],
        "cup" : [48.0, 16.0, 1.0, 0.5, 0.25, 0.0625, 8.0],
        "pint" : [96.0, 32.0, 2.0, 1.0, 0.5, 0.125, 16.0],
        "quart" : [192.0, 64.0, 4.0, 2.0, 1.0, 0.25, 32.0],
        "gallon" : [768.0, 256.0, 16.0, 8.0, 4.0, 1.0, 128.0],
        "floz" : [6.0, 2.0, 0.125, 0.0625, 0.03125, 0.0078125, 1.0]
    ]
}