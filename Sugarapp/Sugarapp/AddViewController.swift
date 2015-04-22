//
//  AddViewController.swift
//  Sugarapp
//
//  Created by Nikolas Moya on 4/21/15.
//  Copyright (c) 2015 Nikolas Moya. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate: class {
    func AddViewControllerDidTouchConfirmation(sugarAmount: Int, sender: AnyObject)
}

class AddViewController: UIViewController {

    weak var delegate: AddViewControllerDelegate?
    
    @IBAction func confirmAdditionButton(sender: AnyObject) {
        delegate?.AddViewControllerDidTouchConfirmation(100, sender: sender);
//        NSNotificationCenter.defaultCenter().postNotificationName("AddInt", object: 100)
        dismissViewControllerAnimated(Bool(true), completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
