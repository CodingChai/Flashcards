//
//  ViewController.swift
//  Flashcards
//
//  Created by George Lu on 10/13/18.
//  Copyright © 2018 George Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AnswerLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet var tapOnFlashCard: UITapGestureRecognizer!
    
    var firstTime: Bool!
    override func viewDidLoad() {
        AnswerLabel.layer.masksToBounds=true
        QuestionLabel.layer.masksToBounds=true
        AnswerLabel.layer.cornerRadius=20
        QuestionLabel.layer.cornerRadius=20
        firstTime=true;
    }

    @IBAction func tappedFlashCard(_ sender: Any) {
        if(firstTime){
            QuestionLabel.isHidden=true;
            firstTime=false;
        }
        else if(QuestionLabel.isHidden==true && AnswerLabel.isHidden==false){
            AnswerLabel.isHidden=true;
            QuestionLabel.isHidden=false;
        }
        else{
            AnswerLabel.isHidden=false;
            QuestionLabel.isHidden=true;
        }
    }
    
    func upDate(question: String, answer: String){
        QuestionLabel.text=question
        AnswerLabel.text=answer
    }
    
}

