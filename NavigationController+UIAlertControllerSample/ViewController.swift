//
//  ViewController.swift
//  NavigationController+UIAlertControllerSample
//
//  Created by 丸本聡 on 2020/01/04.
//  Copyright © 2020 丸本聡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pushButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Alert", bundle: nil)
        guard let nextView = storyboard.instantiateViewController(withIdentifier: "Alert") as? AlertViewController else { return }
        navigationController?.pushViewController(nextView, animated: true)
    }
}
