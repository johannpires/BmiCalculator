//
//  ViewController.swift
//  interest calculator
//
//  Created by Johann Pires on 02/02/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

weak var principalTextField: UITextField!
weak var interestRateTextField: UITextField!
weak var numberOfYearsTextField: UITextField!
weak var resultLabel: UILabel!

func calculateButtonTapped(_ sender: Any) {
    // Read the values entered by the user
    let principal = Double(principalTextField.text!) ?? 0
    let interestRate = Double(interestRateTextField.text!) ?? 0
    let numberOfYears = Double(numberOfYearsTextField.text!) ?? 0

    // Calculate the interest
    let interest = principal * (interestRate/100) * numberOfYears

    // Display the result
    resultLabel.text = "Interest: \(interest)"
  }





