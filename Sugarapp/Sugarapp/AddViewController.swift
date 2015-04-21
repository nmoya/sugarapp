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

        println("Hello world");
        
        delegate?.AddViewControllerDidTouchConfirmation(100, sender: sender);
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
//        println("AddViewController.swift")
//    }
    

}
