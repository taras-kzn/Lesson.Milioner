//
//  MainViewController.swift
//  Millioner
//
//  Created by admin on 18.10.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {

    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var countAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "startGameSeque":
            guard let destination = segue.destination as? GameSceneViewController else {return}
            destination.gameDelegate = self
        default:
            break
        }
    }

}

extension MainViewController: GameScenaDelegate {
    func didEndGame(result: Int, string: String) {
        self.countAnswerLabel.text = "Вы отгадали: \(result) вопроса \(string) "
    }

}
