//
//  FourthViewController.swift
//  UnwindSegues
//
//  Created by Shivankit on 13/10/19.
//  Copyright © 2019 Shivankit. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.barTintColor = UIColor(red: 212/255, green: 233/255, blue: 255/255, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FirstViewController
        destinationVC.labelString = "Data from last screen"
        destinationVC.congratulationsImageView.image = UIImage(named: "congratulations")
        destinationVC.nextButtonBottomConstraint.constant = 100
        destinationVC.nextButton.isHidden = true
        destinationVC.resetButton.isHidden = false
    }
}
