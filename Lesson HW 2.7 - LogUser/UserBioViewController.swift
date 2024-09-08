//
//  UserBioViewController.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import UIKit

final class UserBioViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var infoLabelAboutUser: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabelAboutUser.numberOfLines = 0
        infoLabelAboutUser.text = user.person.bioUser
        
        self.navigationController?.navigationBar.tintColor = UIColor.white

        self.title = user.person.fullNameUser + " Bio"

        view.applyGradient(colors: [UIColor.blue.cgColor, UIColor.purple.cgColor])
    }
}
