//
//  ConverterMainPageViewController.swift
//  Cooks Converter
//
//  Created by Grace Thompson on 5/13/15.
//  Copyright (c) 2015 Grace Thompson. All rights reserved.
//

import UIKit
import QuartzCore


class ConverterMainPageViewController: UIViewController, UITextFieldDelegate {
    
    var number: String!
    var measurementType: String!
    
    var buttonsArray: [UIButton] = [] //create empty array to adjust format settings on all buttons simultaneously
    
    @IBOutlet weak var tspButton: UIButton!
    @IBOutlet weak var tbspButton: UIButton!
    @IBOutlet weak var cupButton: UIButton!
    @IBOutlet weak var pintButton: UIButton!
    @IBOutlet weak var quartButton: UIButton!
    @IBOutlet weak var gallonButton: UIButton!
    @IBOutlet weak var flozButton: UIButton!
    
    
    
    @IBOutlet weak var numberField: UITextField! //textfield for number input

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //officially label each button for transfer purposes
        tspButton.titleLabel?.text = "tsp"
        tbspButton.titleLabel?.text = "tbsp"
        cupButton.titleLabel?.text = "cup"
        pintButton.titleLabel?.text = "pint"
        quartButton.titleLabel?.text = "quart"
        gallonButton.titleLabel?.text = "gallon"
        flozButton.titleLabel?.text = "fl. oz"
        
        //set up attributes of all buttons in view through for loop
        buttonsArray += [tspButton, tbspButton, cupButton, pintButton, quartButton, gallonButton, flozButton]
        
        for index in 0..<buttonsArray.count {
            let button = buttonsArray[index]
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.blackColor().CGColor
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField) { //close keyboard. possibly not necessary since number pad has no 'done' button.
        sender.resignFirstResponder()
    }
    
    
    @IBAction func backgroundTap(sender: UIControl) { //closes keyboard theoretically by touching outside of the keyboard field area.
        ConversionAccess.amount = numberField.text //send user specified amount to global variable file.
        number = ConversionAccess.amount //set number amount in current file to user specified amount.
        numberField.resignFirstResponder()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let equivalenciesDetailController = segue.destinationViewController as EquivalenciesViewController
        
        equivalenciesDetailController.amountToPass = number //also sends number to next view controller, might be unnecessary if data is collected from global variable instead.

          }
    
    func getButtonType(sender: UIButton) { //function to get the title label of the button pressed to send the measurement type along.
        var currentTitle: String? {
            get {
                return sender.titleLabel?.text
            }
        }
        measurementType = currentTitle
        ConversionAccess.measurementType = measurementType //update measurement type to global variable file.
    
            }
    
    @IBAction func showEquivalencies(sender: UIButton) { //gets information for next view and transitions with segue.
        getButtonType(sender)
        
        performSegueWithIdentifier("showEquivalenciesSegue", sender: sender)
    }

}
