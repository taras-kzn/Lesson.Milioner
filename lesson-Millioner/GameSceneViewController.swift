//
//  GameSceneViewController.swift
//  Millioner
//
//  Created by admin on 18.10.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

protocol GameScenaDelegate: class {
    func didEndGame(result: Int, string: String)
}

final class GameSceneViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    weak var gameDelegate: GameScenaDelegate?
    
    private var question = [Question.init(question: "Какой луебол у Чикаго Булс", answerOne: "Шершень", answerTwo: "Бык", answerFree: "Рыцарь", answerFour: "Пингвин", correctAnswer: "Бык"), Question.init(question: "Какая из этих марок Корейская", answerOne: "Audi", answerTwo: "Kia", answerFree: "Lexsus", answerFour: "Reno", correctAnswer: "Kia"),Question.init(question: "Какая из этих покерных комбинаций сильнее", answerOne: "Каре", answerTwo: "Две пары", answerFree: "Стрит", answerFour: "Флеш", correctAnswer: "Каре"), Question.init(question: "Что не бывает Мосрким", answerOne: "Рельс", answerTwo: "Огурец", answerFree: "Гребешок", answerFour: "Узел", correctAnswer: "Рельс"), Question.init(question: "Что такое добогрейка", answerOne: "Шапка", answerTwo: "Болезнь", answerFree: "Печка", answerFour: "Жнейка", correctAnswer: "Жнейка")]
    
    private var countAnswer = 1
    private var countArray = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askQuestation()
        
    }
    
    func askQuestation() {
        questionLabel.text = question[countArray].question
        button1.setTitle(question[countArray].answerOne, for: .normal)
        button1.backgroundColor = .blue
        button2.setTitle(question[countArray].answerTwo, for: .normal)
        button2.backgroundColor = .blue
        button3.setTitle(question[countArray].answerFree, for: .normal)
        button3.backgroundColor = .blue
        button4.setTitle(question[countArray].answerFour, for: .normal)
        button4.backgroundColor = .blue
    }
    
    @IBAction func answerButtonOne(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            actionButton(button: button1)
        case 1:
            actionButton(button: button2)
        case 2:
            actionButton(button: button3)
        case 3:
            actionButton(button: button4)
        default:
            return
        }
    }
    
    func actionButton(button: UIButton) {
    
        if button.titleLabel?.text == question[countArray].correctAnswer {

            if countAnswer == 5 {
                self.gameDelegate?.didEndGame(result: countAnswer, string: "Вы прошли всю игру")
                let record = GameSession(date: Date(), allQuestions: question.count , corecctAnswer: countAnswer)
                Game.shared.addGameSession(allQustetions: record, correctAnswer: record)
                self.dismiss(animated: true, completion: nil)
            } else {
                countAnswer += 1
                countArray += 1
                askQuestation()
            }
            
        } else {
            self.gameDelegate?.didEndGame(result: countAnswer - 1, string: "и проиграли")
            let record = GameSession(date: Date(), allQuestions: question.count, corecctAnswer: countAnswer - 1)
            Game.shared.addGameSession(allQustetions: record, correctAnswer: record)
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    
}
