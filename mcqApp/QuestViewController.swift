//
//  ViewController.swift
//  mcqApp
//
//  Created by Shaunak Jagtap on 21/09/19.
//  Copyright © 2019 Sagar Mahindrakar. All rights reserved.
//

import UIKit

class QuestViewController: UIViewController {

    //score label layout
    @IBOutlet weak var scoreLabel: UILabel!
    
    //question label layout
    @IBOutlet weak var questionLabel: UILabel!
    
    //optionlabel layout
    @IBOutlet weak var option1L: UILabel!
    @IBOutlet weak var option2L: UILabel!
    @IBOutlet weak var option3L: UILabel!
    
    @IBOutlet weak var option4L: UILabel!
    
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateQuestion()
        updateUI()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1) {
            
            if sender.tag == self.selectedAnswer
            {
                sender.backgroundColor = .green
                self.score += 1
            }
            else
            {
                sender.backgroundColor = .red
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { sender.backgroundColor = .white
                self.questionNumber += 1
                self.updateQuestion()
            }
           
        }
        
    }
    
    
    

    func updateQuestion(){
        
      
        
        if questionNumber <= allQuestions.list.count - 1{
            questionLabel.text = allQuestions.list[questionNumber].qustion
            option1L.text = allQuestions.list[questionNumber].option1
            option2L.text = allQuestions.list[questionNumber].option2
            option3L.text = allQuestions.list[questionNumber].option3
            option4L.text = allQuestions.list[questionNumber].option4
            //option1L.text(allQuestions.list[questionNumber].option1, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].ans
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    func updateUI(){
        scoreLabel.text = "\(score)"
        
    }
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }

}

