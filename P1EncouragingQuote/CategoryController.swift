//
//  CategoryController.swift
//  P1EncouragingQuote
//
//  Created by phuuphuoc on 3/28/18.
//  Copyright © 2018 phuuphuoc. All rights reserved.
//

import UIKit

class CategoryController: UIViewController {
    //MARK: Local variables
    var type = -1
    
    
    //MARK: UI Events
    @IBAction func categoryChoice_Tapped(sender: AnyObject) {
        //Luu lai lua chon cua nut bam truoc
        type = sender.tag
        
        print(sender.tag)
        
        //Thuc hien viec chuyen trang
        performSegueWithIdentifier("SegueCatToQuote", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SegueCatToQuote" {
            let destinationController = segue.destinationViewController as! ViewController
            destinationController.quoteType = type //Action
        }
    }
}
