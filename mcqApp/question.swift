//
//  question.swift
//  mcqApp
//
//  Created by Shaunak Jagtap on 22/09/19.
//  Copyright © 2019 Sagar Mahindrakar. All rights reserved.
//

import Foundation


struct QuestionBank {
    var list = [Questions]()
   
    init() {
        
        if let path = Bundle.main.path(forResource: "questions", ofType: "json") {
                let url = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let data = try! Data(contentsOf: url)
            let dict: Dictionary!=(try! JSONSerialization.jsonObject(with: data as Data, options:JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any])
            
            let questionsArray = dict?["questions"] as! [[String:Any]]
                
                for question in questionsArray {
                    let questionstring = question["question"] as! String
                    let option1Str = question["option1"] as! String
                    let option2Str = question["option2"] as! String
                    let option3Str = question["option3"] as! String
                    let option4Str = question["option4"] as! String
                    let answerNumber = question["answer"] as! Int
                    list.append(Questions(qustion : questionstring, option1: option1Str, option2: option2Str, option3: option3Str, option4:option4Str, ans : answerNumber))
                }
        }
    }
}
