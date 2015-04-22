//
//  ViewController.swift
//  Sugarapp
//
//  Created by Nikolas Moya on 4/21/15.
//  Copyright (c) 2015 Nikolas Moya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddViewControllerDelegate {

    @IBOutlet weak var totalSugarLabel: UILabel!
    var amount: Int!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.amount = 0
        totalSugarLabel.text = "0"
        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("AddInt:"), name: "AddInt", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        let vc = segue?.destinationViewController as AddViewController
        vc.delegate = self
    }
    
//    func AddInt(notification : NSNotification) {
//        println("Notification")
//        println(self.amount);
//        let sugarAmount = notification.object as Int
//        self.amount = self.amount + Int(sugarAmount);
//        var str = String(self.amount);
//        dispatch_async(dispatch_get_main_queue(), {
//            self.totalSugarLabel.text = str;
//        })
//    }

    func AddViewControllerDidTouchConfirmation(sugarAmount: Int, sender: AnyObject) {
        self.amount = self.amount + Int(sugarAmount)
        var str = String(self.amount)
        self.totalSugarLabel.text = str
    }

}

