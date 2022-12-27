//
//  MainTabBarController.swift
//  DoranDoran
//
//  Created by 효우 on 2022/12/28.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
}

// MARK: - Methods

extension MainTabBarController {
    
    func setupViewControllers() {
        view.backgroundColor = .white
        
        let listVC = templateNavigationController(
            unselectedImage: UIImage(systemName: "folder.badge.plus"),
            selectedImage: UIImage(systemName: "folder.fill.badge.plus"),
            rootViewController: FavoriteTableViewController()
        )
        
        let WriteVC = templateNavigationController(
            unselectedImage: UIImage(systemName: "speaker.wave.3"),
            selectedImage: UIImage(systemName: "speaker.wave.3.fill"),
            rootViewController: SpeechViewController()
        )
        
        let settingVC = templateNavigationController(
            unselectedImage: UIImage(systemName: "gearshape"),
            selectedImage: UIImage(systemName: "gearshape.fill"),
            rootViewController: SettingTableViewController()
        )
        
        self.setViewControllers([listVC, WriteVC, settingVC], animated: true)
        self.selectedIndex = 1
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .systemBackground
        
    }
    
    func templateNavigationController(
        unselectedImage: UIImage?,
        selectedImage: UIImage?,
        rootViewController: UIViewController
    ) -> UINavigationController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = unselectedImage
        navigationVC.tabBarItem.selectedImage = selectedImage
        navigationVC.navigationBar.tintColor = .black
        return navigationVC
    }
}
