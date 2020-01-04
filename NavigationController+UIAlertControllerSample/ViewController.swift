//
//  ViewController.swift
//  NavigationController+UIAlertControllerSample
//
//  Created by 丸本聡 on 2020/01/04.
//  Copyright © 2020 丸本聡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var backbutton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonAlert(sender: UIBarButtonItem) {
        let alertController:UIAlertController =
            UIAlertController(title:"入力の途中ですが、終了しますか？",
                              message:"これまでに入力した内容は破棄されます。掲載期限まであとn日！",
                              preferredStyle: .alert)
        
        
        // OK
        let defaultAction:UIAlertAction =
            UIAlertAction(title: "破棄して終了",
                          style: .default,
                          handler:{
                            (action:UIAlertAction!) -> Void in
                            print("破棄して終了")
            })
        
        // Cancel
        let cancelAction:UIAlertAction =
            UIAlertAction(title: "入力を続ける",
                          style: .cancel,
                          handler:{
                            (action:UIAlertAction!) -> Void in
                            print("入力を続ける")
            })
        
        // action
        alertController.addAction(cancelAction)
        alertController.addAction(defaultAction)
        
        // UIAlertController
        present(alertController, animated: true, completion: nil)
    }
    
}

