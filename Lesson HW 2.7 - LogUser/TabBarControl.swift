//
//  TabBarControl.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import UIKit

final class TabBarControl: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}

