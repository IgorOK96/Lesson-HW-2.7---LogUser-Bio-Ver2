//
//  WelcomeViewController.swift
//  Lesson HW 2.7 - LogUser
//
//  Created by user246073 on 9/7/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var fullName: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserLabel.text = ("Welcome \(user.login)")
        fullName.text = ("My name is \(user.person.fullNameUser).")
        
        view.applyGradient(colors: [UIColor.blue.cgColor, UIColor.purple.cgColor])
    }
}


