//
//  ViewController.swift
//  Hael Home Automation
//
//  Created by user202650 on 8/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func hamburgerTapped(_ sender: Any) {
        if !hamburgerMenuIsVisible {
            leadingC.constant = 150
            trailingC.constant = -150
            hamburgerMenuIsVisible = true
        }
        else{
            leadingC.constant = 0
            trailingC.constant = 0
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay:0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    
    @IBOutlet var leadingC: NSLayoutConstraint!
    @IBOutlet var trailingC: NSLayoutConstraint!
    
    @IBOutlet var cover: UIView!
    var hamburgerMenuIsVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

