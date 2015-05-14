//
//  EquivalenciesViewController.swift
//  Cooks Converter
//
//  Created by Grace Thompson on 5/13/15.
//  Copyright (c) 2015 Grace Thompson. All rights reserved.
//

import UIKit

class EquivalenciesViewController: UIViewController {
    
    var measurements = ["tsp" : [1, 1/3, 1/48, 1/96, 1/192, 1/768, 1/6],
        "tbsp" : [3, 1, 1/16, 1/32, 1/64, 1/256, 1/2],
        "cup" : [48, 16, 1, 1/2, 1/4, 1/16, 8],
        "pint" : [96, 32, 2, 1, 1/2, 1/8, 16],
        "quart" : [192, 64, 4, 2, 1, 1/4, 32],
        "gallon" : [768, 256, 16, 8, 4, 1, 128],
        "floz" : [6, 2, 1/8, 1/16, 1/32, 1/128, 1]
    ]
    
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var tspNum: UILabel!
    @IBOutlet weak var tbspNum: UILabel!
    @IBOutlet weak var cupNum: UILabel!
    @IBOutlet weak var pintNum: UILabel!
    @IBOutlet weak var quartNum: UILabel!
    @IBOutlet weak var gallonNum: UILabel!
    @IBOutlet weak var flozNum: UILabel!
    
    
    var amountToPass: Int!
    var amountType: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        println(amountType)
        
        //var selectedType = measurements[amountType]
        
        self.amountLabel.text = "\(amountToPass) \(amountType) is equal to:"
        //self.tspNum.text = String(amountToPass * selectedType![0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
