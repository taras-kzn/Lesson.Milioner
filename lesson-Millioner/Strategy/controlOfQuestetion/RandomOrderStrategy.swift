//
//  RandomOrderStrategy.swift
//  lesson-Millioner
//
//  Created by admin on 04.11.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation


final class RandomOrderStrategy: ControlQuestetionStrategy {
    
    func controlQuestetion(count: Int, array: [Question]) -> Question {
        
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))

        return array[randomIndex]
    }

}
