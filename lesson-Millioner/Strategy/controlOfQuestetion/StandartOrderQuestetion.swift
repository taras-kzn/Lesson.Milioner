//
//  StandartOrderQuestetion.swift
//  lesson-Millioner
//
//  Created by admin on 03.11.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation


final class StandartOrderQuestetion: ControlQuestetionStrategy {

    var countArray = 0
    
    func controlQuestetion(count: Int, array: [Question]) -> Question {
        countArray = count
        countArray += 1
        return array[countArray]
    }


}
