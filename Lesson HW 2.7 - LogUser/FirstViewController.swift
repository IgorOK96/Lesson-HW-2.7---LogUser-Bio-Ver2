//
//  FirstViewController.swift
//  Lesson HW 2.7 - LogUser
//
//  Created by user246073 on 9/7/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeUserLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let testName = name {
            welcomeUserLabel.text = (welcomeUserLabel.text ?? "") + (testName)
        }
        let gradientLayer = CAGradientLayer()
        // Указываем размеры слоя равными размерам View
        gradientLayer.frame = view.bounds
        // Задаем цвета для градиента (например, от синего к фиолетовому)
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.purple.cgColor]
        // Опционально можно задать направления (по умолчанию сверху вниз)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        // Добавляем градиент на наш View
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
//    // MARK: - IB Actions
//    @IBAction func logOutButton(_ sender: UIButton) {
//        dismiss(animated: true)
//    }
}
