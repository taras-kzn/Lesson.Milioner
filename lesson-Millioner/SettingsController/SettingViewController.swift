//
//  SettingViewController.swift
//  lesson-Millioner
//
//  Created by admin on 04.11.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit


class SettingViewController: UIViewController {
    
    @IBOutlet weak var settingControll: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        settingControll.addTarget(self,
                                  action: #selector(selectedGame),
                                  for: .valueChanged)
    }
    
    @objc func selectedGame(target: UISegmentedControl) {
        if target == self.settingControll {
            switch target.selectedSegmentIndex {
            case 0:
                Game.shared.setting = .standart
            case 1:
                Game.shared.setting = .random
            default:
                Game.shared.setting = .standart
            }
        }
    }

}
