//
//  Game.swift
//  Millioner
//
//  Created by admin on 19.10.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation


final class Game {
    
    static let shared = Game()
    
    private let recordsCarectaker = GameCarectaker()
    
    private(set) var records : [GameSession] {
        didSet{
            recordsCarectaker.saveGame(records: self.records)
        }
    }
    
    var setting: Difficulty = .standart
    
    private(set) var allQuestion: Int = 0
    
    private init() {
        
        self.records = self.recordsCarectaker.loadGame()
    }
    
    
    func addGameSession(allQustetions: GameSession, correctAnswer correct: GameSession){
        self.records.append(correct)
        self.allQuestion = allQustetions.allQuestions
    }
    
    func clearRecords() {
        self.records = []
    }
}

struct GameSession: Codable {
    
    let date: Date
    let allQuestions: Int
    let corecctAnswer: Int
}
