//
//  UserInfoViewController.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import UIKit

final class UserInfoViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var positionInfLabel: UILabel!
    @IBOutlet var departmentInfLabel: UILabel!
    @IBOutlet var jobInfLabel: UILabel!
    @IBOutlet var surnameInfLabel: UILabel!
    @IBOutlet var nameInfLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameInfLabel.text = user.person.name
        surnameInfLabel.text = user.person.surname
        jobInfLabel.text = user.person.job
        departmentInfLabel.text = user.person.department
        positionInfLabel.text = user.person.position
        
        self.title = user.person.fullNameUser
                
        view.applyGradient(colors: [UIColor.blue.cgColor, UIColor.purple.cgColor])

        let backButton = UIBarButtonItem()
            backButton.title = user.person.fullNameUser
            navigationItem.backBarButtonItem = backButton
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        userBioVC.user = user
    }
}
   
