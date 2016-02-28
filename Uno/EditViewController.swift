//
//  EditViewController.swift
//  Uno
//
//  Created by Shweyee Win on 2/28/16.
//  Copyright © 2016 shweyee. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    
    @IBOutlet weak var editTxt: UITextField!
    @IBOutlet weak var closeBtn: UIButton!
    
    var label : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("EditViewController")
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    /*
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //        let viewcontroller : SecondViewController = segue.destinationViewController as UINavigationController
        
    }
    
    override func viewWillAppear(animated: Bool) {
        editTxt.text = label;
    }
    
}
