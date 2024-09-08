//
//  SecondViewController.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import UIKit

final class SecondViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var positionInfLabel: UILabel!
    @IBOutlet var departmentInfLabel: UILabel!
    @IBOutlet var jobInfLabel: UILabel!
    @IBOutlet var surnameInfLabel: UILabel!
    @IBOutlet var nameInfLabel: UILabel!
    
    private let userInf = UserInfo.getUserInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameInfLabel.text = userInf.name
        surnameInfLabel.text = userInf.surname
        jobInfLabel.text = userInf.job
        departmentInfLabel.text = userInf.department
        positionInfLabel.text = userInf.position
        
        self.title = userInf.name + " " + userInf.surname
        
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
}
   
