//
//  EquivalenciesViewController.swift
//  Cooks Converter
//
//  Created by Grace Thompson on 5/13/15.
//  Copyright (c) 2015 Grace Thompson. All rights reserved.
//

import UIKit

class EquivalenciesViewController: UIViewController {
    
    
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var tspNum: UILabel!
    @IBOutlet weak var tbspNum: UILabel!
    @IBOutlet weak var cupNum: UILabel!
    @IBOutlet weak var pintNum: UILabel!
    @IBOutlet weak var quartNum: UILabel!
    @IBOutlet weak var gallonNum: UILabel!
    @IBOutlet weak var flozNum: UILabel!
    
    
    var amountToPass: String!
    var amountType: String!
    var amount: Double!
    var results: [Double] = []
    
    func calculate(amount: Double, type: String) -> [Double]! {
        let typeArray: [Double] = ConversionAccess.measurements[type]!
        
        for var index = 0; index < typeArray.count; index++ {
            let valueAtIndex = typeArray[index]
            let number = valueAtIndex * amount
            results += [number]
        }
        return results
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //println(amountType)
        //println(amountToPass)
        
        self.amountType = ConversionAccess.measurementType
        
        amount = (amountToPass as NSString).doubleValue //convert String from numberField to Double for calculations
        
        //var selectedType = measurements[amountType]
        //println(selectedType![0])
        //var measurementsDictionary = ConversionAccess.measurements
        //var calculateAmounts = measurementsDictionary[amountType]
        
       // println(calculateAmounts![0])
        
        
        //let selectedType = measurements[amountType]
        
        self.amountLabel.text = "\(amountToPass) \(amountType) is equal to:"
        
        let calculations = calculate(amount, type: amountType)
        self.tspNum.text = NSString(format: "%.2f", calculations[0])
        self.tbspNum.text = NSString(format: "%.2f", calculations[1])
        self.cupNum.text = NSString(format: "%.2f", calculations[2])
        self.pintNum.text = NSString(format: "%.2f", calculations[3])
        self.quartNum.text = NSString(format: "%.2f", calculations[4])
        self.gallonNum.text = NSString(format: "%.2f", calculations[5])
        self.flozNum.text = NSString(format: "%.2f", calculations[6])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
