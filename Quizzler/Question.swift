//
//  Question.swift
//  Quizzler
//
//  Created by Nada Yehia Dawoud on 3/1/18.
//  Copyright © 2018 Mobile Apps Kitchen. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer :  Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
