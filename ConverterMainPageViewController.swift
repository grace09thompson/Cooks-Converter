//
//  ConverterMainPageViewController.swift
//  Cooks Converter
//
//  Created by Grace Thompson on 5/13/15.
//  Copyright (c) 2015 Grace Thompson. All rights reserved.
//

import UIKit
import QuartzCore


class ConverterMainPageViewController: UIViewController {
    
    var number: String!
    var measurementType: String!
    
    var buttonsArray: [UIButton] = []
    
    @IBOutlet weak var tspButton: UIButton!
    @IBOutlet weak var tbspButton: UIButton!
    @IBOutlet weak var cupButton: UIButton!
    @IBOutlet weak var pintButton: UIButton!
    @IBOutlet weak var quartButton: UIButton!
    @IBOutlet weak var gallonButton: UIButton!
    @IBOutlet weak var flozButton: UIButton!
    
    @IBOutlet weak var numberField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonsArray += [tspButton, tbspButton, cupButton, pintButton, quartButton, gallonButton, flozButton]
        
        for index in 0..<buttonsArray.count {
            let button = buttonsArray[index]
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.blackColor().CGColor
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        //ConversionAccess.amount = numberField.text
        //number = ConversionAccess.amount
        sender.resignFirstResponder()
    }
    
    
    @IBAction func backgroundTap(sender: UIControl) {
        ConversionAccess.amount = numberField.text
        number = ConversionAccess.amount
        numberField.resignFirstResponder()
    }
    
    @IBAction func tspButtonPressed(sender: UIButton) {
        measurementType = "tsp"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showEquivalenciesSegue" {
            let equivalenciesDetailController = segue.destinationViewController as EquivalenciesViewController
            equivalenciesDetailController.amountToPass = number
            equivalenciesDetailController.amountType = measurementType
            
        }
    }
    
    @IBAction func showEquivalencies(sender: UIButton) {
    
        performSegueWithIdentifier("showEquivalenciesSegue", sender: sender)
    }

}
