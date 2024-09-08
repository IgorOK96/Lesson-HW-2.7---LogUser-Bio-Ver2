//
//  TabBarControl.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import UIKit

final class TabBarControl: UITabBarController {
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        tabBar.items?.last?.title = user.person.fullNameUser
        
        transferdata()
    }
    
    private func transferdata() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let WelcomeVC = $0 as? WelcomeViewController {
                WelcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? UserInfoViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
}

