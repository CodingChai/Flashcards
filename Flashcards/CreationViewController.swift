//
//  CreationViewController.swift
//  Flashcards
//
//  Created by George Lu on 10/27/18.
//  Copyright © 2018 George Lu. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {

    var flashcardViewController:ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        let updateQuestion = questionTextField.text
        let updateAnswer = answerTextField.text
        flashcardViewController.upDate(question: updateQuestion!, answer: updateAnswer!)
        dismiss(animated: true)
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardViewController = self
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
