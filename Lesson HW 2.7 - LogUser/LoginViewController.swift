//
//  LoginViewController.swift
//  Lesson HW 2.7 - LogUser
//
//  Created by user246073 on 9/6/24.
//
import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
        
    private var user = User.getUser()

    // MARK: - Prepere override
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.text = user.login
        passwordTF.text = user.password
        print("User ID:", user.id)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarControl else {
            return
        }
        tabBarController.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // MARK: - IB Actions
    override func shouldPerformSegue(withIdentifier logoutSegue: String, sender: Any?) -> Bool {
        guard nameTF.text == user.login && passwordTF.text == user.password  else {
            showErrorAlert()
            return false
        }
        return true
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

extension UIView {
    func applyGradient(colors: [CGColor], startPoint: CGPoint = CGPoint(x: 0, y: 0), endPoint: CGPoint = CGPoint(x: 1, y: 1)) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = colors
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
