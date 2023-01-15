//
//  ViewController.swift
//  ricknmorty
//
//  Created by Henrique Ladeira on 15/01/23.
//

import UIKit

class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabs()
    }
    
    private func setUpTabs() {
        let characterNC = UINavigationController(rootViewController: RMCharacterViewController())
        let locationNC = UINavigationController(rootViewController: RMLocationViewController())
        let episodeNC = UINavigationController(rootViewController: RMEpisodeViewController())
        let settingsNC = UINavigationController(rootViewController: RMSettingsViewController())
                
        // TODO - This should be unnecessary
        // The title are already declared in UIViewControllers
        characterNC.tabBarItem = UITabBarItem(title: "Charactes", image: UIImage(systemName: "person.3.sequence.fill"), tag:1)
        locationNC.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "location.fill.viewfinder"), tag: 2)
        episodeNC.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "list.number"), tag: 3)
        settingsNC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape.fill"), tag: 4)
        
        let tabBarsNC = [characterNC, locationNC, episodeNC, settingsNC]
        
        setViewControllers(tabBarsNC, animated: true)
        
    }


}

