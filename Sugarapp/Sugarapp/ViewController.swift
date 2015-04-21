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
    var amount = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.amount = 0;
        totalSugarLabel.text = String(arc4random());
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        println("ViewController.swift segue");
        let vc = segue?.destinationViewController as AddViewController
        vc.delegate = self
    }

    func AddViewControllerDidTouchConfirmation(sugarAmount: Int, sender: AnyObject) {
        self.amount += sugarAmount;
        var str = String(self.amount);
        dispatch_async(dispatch_get_main_queue(), {
            self.totalSugarLabel.text = str;
        })
    }

}

