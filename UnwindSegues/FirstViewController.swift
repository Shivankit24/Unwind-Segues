//
//  FirstViewController.swift
//  UnwindSegues
//
//  Created by Shivankit on 13/10/19.
//  Copyright © 2019 Shivankit. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //  MARK:- Interface builder Outelets
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var congratulationsImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var nextButtonBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var textLabelBottomConstraint: NSLayoutConstraint!
    
    //  Properties
    let defaultLabelText = "Nothing here as of now"
    var labelString: String {
        get {
            return defaultLabelText
        }
        set {
            textLabel.text = newValue
        }
    }
    
    // MARK:-   View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        labelString = defaultLabelText
        textLabel.text = labelString
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.barTintColor = UIColor(red: 97/255, green: 209/255, blue: 200/255, alpha: 1)
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        let destinationVC = SecondViewController()
        navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    //  MARK:- Interface builder actions
    @IBAction func unwindToOne(sender: UIStoryboardSegue) {}
    
    @IBAction func resetButtonTapAction(_ sender: UIButton) {
        if congratulationsImageView.image != nil && textLabel.text != defaultLabelText {
            congratulationsImageView.image = nil
            textLabel.text = defaultLabelText
            resetButton.isHidden = true
            nextButtonBottomConstraint.constant = 50
            nextButton.isHidden = false
        }
    }
}
