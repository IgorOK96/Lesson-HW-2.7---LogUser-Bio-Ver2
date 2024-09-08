//
//  ThirdViewController.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import UIKit

final class ThirdViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var infoLabelAboutUser: UILabel!
    
    private let userInf = UserInfo.getUserInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabelAboutUser.numberOfLines = 0
        infoLabelAboutUser.text = userInf.bioUser
        
        let backButton = UIBarButtonItem()
        backButton.title = userInf.name + " " + userInf.surname

        self.navigationItem.backBarButtonItem = backButton
        self.navigationController?.navigationBar.tintColor = UIColor.white

        self.title = userInf.name + " " + userInf.surname + " Bio"

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
