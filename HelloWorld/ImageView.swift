//
//  ImageView.swift
//  HelloWorld
//
//  Created by ANUSHA on 1/15/17.
//  Copyright © 2017 ANUSHA. All rights reserved.
//

import UIKit

class ImageView: UIViewController {
    
    var action:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(action);
        
        if (action == 100) {
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "SnoqualmieFalls.jpg")?.drawInRect(self.view.bounds)
        
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: image)
        }
        else if (action == 200) {
            
            UIGraphicsBeginImageContext(self.view.frame.size)
            UIImage(named: "FerrisEye.png")?.drawInRect(self.view.bounds)
            
            let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
            
            UIGraphicsEndImageContext()
            
            self.view.backgroundColor = UIColor(patternImage: image)
        }
        
    }

}
