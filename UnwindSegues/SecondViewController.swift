//
//  SecondViewController.swift
//  UnwindSegues
//
//  Created by Shivankit on 13/10/19.
//  Copyright © 2019 Shivankit. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.barTintColor = UIColor(red: 194/255, green: 135/255, blue: 124/255, alpha: 1)
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let destinationVC = ThirdViewController()
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}
