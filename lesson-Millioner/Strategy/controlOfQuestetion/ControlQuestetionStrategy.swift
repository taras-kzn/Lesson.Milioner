//
//  ControlQuestetionStrategy.swift
//  lesson-Millioner
//
//  Created by admin on 03.11.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation


protocol ControlQuestetionStrategy: class {

    func controlQuestetion(count: Int, array: [Question]) -> Question
}


