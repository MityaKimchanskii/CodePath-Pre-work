//
//  ViewController.swift
//  Prework
//
//  Created by Mitya Kim on 1/1/22.
//

import UIKit


class ViewController: SettingsViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSliderLabel: UILabel!
    @IBOutlet weak var tipSlader: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tipSlader.isHidden = true
//        tipSliderLabel.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.backgroundColor = SettingsViewController.sharedInstance.backgroundColor

//        let vc = SettingsViewController()
//        tipSliderLabel.isHidden = vc.sliderLabel
//        tipSlader.isHidden = vc.slider
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPersentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPersentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func sladerCalculateTip(_ sender: UISlider) {
        let percentage = String(format: "%.0f" + "%", tipSlader.value)
        tipSliderLabel.text = "\(percentage)%"
        let bill2 = Double(billAmountTextField.text!) ?? 0
        let tip2 = bill2 * ((Double(percentage) ?? 0) / 100)
        let total2 = bill2 + tip2
        tipAmountLabel.text = String(format: "$%.2f", tip2)
        totalLabel.text = String(format: "$%.2f", total2)
    }
}

