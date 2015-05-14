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
    
    var number: Int!
    var measurementType: String!
    
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
        
        tspButton.layer.borderWidth = 1
        tspButton.layer.borderColor = UIColor.blackColor().CGColor
        tbspButton.layer.borderWidth = 1
        tbspButton.layer.borderColor = UIColor.blackColor().CGColor
        cupButton.layer.borderWidth = 1
        cupButton.layer.borderColor = UIColor.blackColor().CGColor
        pintButton.layer.borderWidth = 1
        pintButton.layer.borderColor = UIColor.blackColor().CGColor
        quartButton.layer.borderWidth = 1
        quartButton.layer.borderColor = UIColor.blackColor().CGColor
        gallonButton.layer.borderWidth = 1
        gallonButton.layer.borderColor = UIColor.blackColor().CGColor
        flozButton.layer.borderWidth = 1
        flozButton.layer.borderColor = UIColor.blackColor().CGColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        number = numberField.text.toInt()!
     
        sender.resignFirstResponder()
    }
    
    
    @IBAction func backgroundTap(sender: UIControl) {
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
    
    @IBAction func showEquivalencies(sender: AnyObject) {
        println(number)
    
        performSegueWithIdentifier("showEquivalenciesSegue", sender: sender)
    }

}
