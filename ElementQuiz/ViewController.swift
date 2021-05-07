// ViewController.swift 
// ElementQuiz
// Created on 5/6/21 by Conrad Flescher.
// Copyright 2021 Conrad Flescher. All rights reserved.

import UIKit

enum InterfaceMode {
    case flashCards
    case quiz
}

class ViewController: UIViewController {

    var mode: InterfaceMode = .flashCards
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    /// Index from `elementList` of what element is currently being displayed on screen.
    var currentElementIndex = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var modeSelector: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }
    
    func updateElement() {
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        answerLabel.text = "?"
    }
    
    @IBAction func showAnswerButtonClicked(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        currentElementIndex += 1
        
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        
        updateElement()
    }
    
    
}

