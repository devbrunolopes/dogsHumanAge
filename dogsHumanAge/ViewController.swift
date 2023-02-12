//
//  ViewController.swift
//  dogsAge
//
//  Created by Bruno Lopes on 12/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialConfig()
    }

    @IBAction func didTapResetButton(_ sender: UIButton) {
        resetLayout()
    }
    
    @IBAction func didTapCalculateButton(_ sender: UIButton) {
        let ageInt = Int(ageTextField.text ?? "") ?? 0
        
        calculateHumanDogsAge(idade: ageInt)
    }
    
    func initialConfig() {
        resultLabel.text = ""
    }
    
    func calculateHumanDogsAge(idade: Int) {
        let humanDogsAge = idade * 7
        
        resultLabel.text = "A idade humana do seu cachorrinho é de \(humanDogsAge) anos"
    }
    
    func resetLayout() {
        ageTextField.text = ""
        resultLabel.text = ""
    }
}

