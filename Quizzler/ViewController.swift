//
//  ViewController.swift
//  Quizzler
//
//  Created by Nada Yehia Dawoud on 3/1/18.
//  Copyright © 2018 Mobile Apps Kitchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionNumber: Int = 0
    let allQuestions = QuestionBank()
    
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        var pickedAnswer = false
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        
        checkAnswer(pickedAnswer)
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
      
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / \(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if questionNumber < allQuestions.list.count {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else {
            let restartOverAlert = UIAlertController(title: "Awesome", message: "You've finished all questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            restartOverAlert.addAction(restartAction)
            present(restartOverAlert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer(_ pickedAnswer: Bool) {
        if pickedAnswer == allQuestions.list[questionNumber].answer {
            ProgressHUD.showSuccess("Correct Answer")
            score += 1
        }
        else {
            ProgressHUD.showError("Wrong Answer")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
