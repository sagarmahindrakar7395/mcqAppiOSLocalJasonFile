//
//  FirstViewControolerViewController.swift
//  mcqApp
//
//  Created by Shaunak Jagtap on 21/09/19.
//  Copyright © 2019 Sagar Mahindrakar. All rights reserved.
//

import UIKit

class FirstViewControolerViewController: UIViewController {

    @IBAction func onStartTestButtonClick(_ sender: Any) {
        
        let button = sender as! UIButton
        
        UIView.animate(withDuration: 5) {
            button.center.x += self.view.bounds.width
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
}
