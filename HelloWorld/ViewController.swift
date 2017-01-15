//
//  ViewController.swift
//  HelloWorld
//
//  Created by ANUSHA on 1/15/17.
//  Copyright © 2017 ANUSHA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonNumber:Int!
    
    // Heading "HelloWorld"
    @IBOutlet weak var Heading: UILabel!
    
    // Snoqualmie Falls Button
    @IBOutlet weak var snoqualmieFallsButton: UIButton!
    
    // Action on clicking the snoqualmie falls button to display the image of the falls
    @IBAction func snoqualmieFallsClicked(sender: AnyObject) {
        buttonNumber = 100
        performSegueWithIdentifier("MainToImage", sender: sender)
    }

    // Ferris Wheels Button
    @IBOutlet weak var ferrisWheelButton: UIButton!
    
    
    // Action on clicking the ferris wheels falls button to display the image of the ferris wheel
    @IBAction func ferrisWheelClicked(sender: AnyObject) {
        buttonNumber = 200
        performSegueWithIdentifier("MainToImage", sender: sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        
        // Setting the backgrpund seattle space needle image
        UIImage(named: "background.png")?.drawInRect(self.view.bounds)
        
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: image)
        
        print("HelloWorld")
        
        Heading.textColor = UIColor.redColor()
        
        // Borders for the buttons
        snoqualmieFallsButton.layer.cornerRadius = 2;
        snoqualmieFallsButton.layer.borderWidth = 1;
        snoqualmieFallsButton.layer.borderColor = UIColor.whiteColor().CGColor
        
        ferrisWheelButton.layer.cornerRadius = 2;
        ferrisWheelButton.layer.borderWidth = 1;
        ferrisWheelButton.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let viewController2 = segue.destinationViewController as? ImageView {
            viewController2.action = buttonNumber
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

