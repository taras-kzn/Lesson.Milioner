//
//  GameCarectaker.swift
//  Millioner
//
//  Created by admin on 19.10.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation


class GameCarectaker {
    
    private let encode = JSONEncoder()
    private let decode = JSONDecoder()
    private let key = "game"
        
    func saveGame(records: [GameSession]) {
        
        do{
            let data = try self.encode.encode(records)
            UserDefaults.standard.set( data, forKey: key)
            
        } catch {
            print(error)
        }
    }
    
    func loadGame() -> [GameSession] {
        
        guard let data = UserDefaults.standard.data(forKey: key) else {return []}
        
        do {
            return try self.decode.decode([GameSession].self, from: data)
            
        } catch  {
            print(error)
            return []
        }
    }

}
