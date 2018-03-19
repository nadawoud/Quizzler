//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Nada Yehia Dawoud on 3/1/18.
//  Copyright © 2018 Mobile Apps Kitchen. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init () {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Dolphins sleep with half of their brain.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "The Loch Ness monster is a protected species.", correctAnswer: true))
        
        list.append(Question(text: "Elephants can’t jump.", correctAnswer: true))
        
        list.append(Question(text: "The blue whale largest blood vessels are big enough for a human to swim in.", correctAnswer: true))
        
        list.append(Question(text: "Baby dolphins are born with a moustache.", correctAnswer: true))
        
        list.append(Question(text: "Gold fish have a poor memory.", correctAnswer: false))
        
        list.append(Question(text: "Some turtles can breathe through their bottom.", correctAnswer: true))
        
        list.append(Question(text: "Starfish have a brain in the centre of their body.", correctAnswer: false))
        
        list.append(Question(text: "Flamingos can only eat with their head upside down.", correctAnswer: true))
        
        list.append(Question(text: "Giraffe have more bones in their necks than humans.", correctAnswer: false))
        
        list.append(Question(text: "Black panthers and leopards are two big cat species.", correctAnswer: false))
        
        list.append(Question(text: "A blue whale tongue is about as heavy as an elephant.", correctAnswer: true))
    }
}
