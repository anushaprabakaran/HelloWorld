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
    
    @IBOutlet weak var Heading: UILabel!

    @IBOutlet weak var snoqualmieFallsButton: UIButton!
    
    @IBAction func snoqualmieFallsClicked(sender: AnyObject) {
        buttonNumber = 100
        performSegueWithIdentifier("MainToImage", sender: sender)
    }

    @IBOutlet weak var ferrisWheelButton: UIButton!
    
    
    @IBAction func ferrisWheelClicked(sender: AnyObject) {
        buttonNumber = 200
        performSegueWithIdentifier("MainToImage", sender: sender)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "background.png")?.drawInRect(self.view.bounds)
        
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: image)
        
        print("HelloWorld")
        
        Heading.textColor = UIColor.redColor()
        
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

