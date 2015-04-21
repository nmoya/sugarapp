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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Delegates
    
    func AddViewControllerDidTouchConfirmation(sugarAmount: Int, sender: AnyObject) {
        amount += sugarAmount;
        var str = String(amount);
        totalSugarLabel.text = str;
    }

}

