//
//  Activity.swift
//  Uno
//
//  Created by Shweyee Win on 2/28/16.
//  Copyright © 2016 shweyee. All rights reserved.
//

import Foundation
import UIKit
struct Product {
    let name: String
    let desctiption: String
}

class Activity: UIViewController {
    
    
    @IBOutlet weak var viewAllBtn: UIBarButtonItem!
    
    var imagePicker = UIImagePickerController()
    
    @IBAction func showPhotoLib(sender: AnyObject) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "segueTest") {
            let evController = segue.destinationViewController as! EditViewController;
            evController.label = self.title;
        }
    }
    
}