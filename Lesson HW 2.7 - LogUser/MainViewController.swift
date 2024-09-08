//
//  MainViewController.swift
//  Lesson HW 2.7 - LogUser
//
//  Created by user246073 on 9/6/24.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
        
    var nameUser: String?
    var trueName = "Igor"
    var truePass = "Swift001"
    
    // MARK: - Prepere override
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstVC = segue.destination as? FirstViewController
        firstVC?.name = truePass
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.text = trueName
        passwordTF.text = truePass
    }

    // MARK: - IB Actions
        @IBAction func logButton(_ sender: UIButton) {
        if nameTF.text == trueName && passwordTF.text == truePass {
            performSegue(withIdentifier: "logoutSegue", sender: self)
            nameUser = nameTF.text
        } else {
            showErrorAlert()
        }
    }
    
    @IBAction func forgotUsername(_ sender: UIButton) {
        let alertName = UIAlertController(
            title: "Oops!",
            message: "Your name is Igor 😎",
            preferredStyle: .alert
        )
        alertName.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertName, animated: true, completion: nil)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        let alertPass = UIAlertController(
            title: "Oops!",
            message: "Your password is Swift001 😎",
            preferredStyle: .alert
        )
        alertPass.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertPass, animated: true, completion: nil)
    }
    
    @IBAction func unwindToMainViewController(_ segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private Methods
    private func showErrorAlert() {
        let alert = UIAlertController(
            title: "Invalid login or password ",
            message: "Please, enter correct login and password",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.nameTF.text = ""
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

