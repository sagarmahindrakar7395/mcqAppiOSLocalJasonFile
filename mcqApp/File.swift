//
//  File.swift
//  mcqApp
//
//  Created by Shaunak Jagtap on 21/09/19.
//  Copyright © 2019 Sagar Mahindrakar. All rights reserved.
//

import Foundation

struct Questions {
    
    var qustion : String
    var option1 : String
    var option2 : String
    var option3 : String
    var option4 : String
    var ans : Int
    
    init(qustion:String,option1:String,option2:String,option3:String,option4:String,ans:Int) {
        self.qustion = qustion
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.ans = ans
    }
    
}
