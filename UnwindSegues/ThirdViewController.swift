//
//  ThirdViewController.swift
//  UnwindSegues
//
//  Created by Shivankit on 13/10/19.
//  Copyright © 2019 Shivankit. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.barTintColor = UIColor(red: 125/255, green: 175/255, blue: 230/255, alpha: 1)
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let destinationVC = FourthViewController()
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}
