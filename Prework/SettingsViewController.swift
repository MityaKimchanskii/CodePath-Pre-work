//
//  SettingsViewController.swift
//  Prework
//
//  Created by Mitya Kim on 1/2/22.
//

import UIKit


class SettingsViewController: UIViewController {
    
    static let sharedInstance = SettingsViewController()
    var backgroundColor = UIColor.white
//    var slider = true
    
    
//    var sliderLabel = true
    
    @IBOutlet weak var switchOutlet: UISwitch!
    
    
    var color: UIColor = UIColor.white

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = SettingsViewController.sharedInstance.backgroundColor
    }
    
    @IBAction func yellowButton(_ sender: UIButton) {
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7411764706, blue: 0.2078431373, alpha: 1)
        color = #colorLiteral(red: 1, green: 0.7411764706, blue: 0.2078431373, alpha: 1)
        SettingsViewController.sharedInstance.backgroundColor = color
        
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        self.view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.6549019608, blue: 0.5882352941, alpha: 1)
        color = #colorLiteral(red: 0.2470588235, green: 0.6549019608, blue: 0.5882352941, alpha: 1)
        SettingsViewController.sharedInstance.backgroundColor = color
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        SettingsViewController.sharedInstance.backgroundColor = color
    }
    
    
    @IBAction func switchSlider(_ sender: UISwitch) {
        let vc = ViewController()
//        if (switchOutlet.isOn) {
            vc.tipSliderLabel?.isHidden = false
            vc.tipSlader?.isHidden = false
//            let sliderLabel = true
//            let slider = true
//        } else {
//            vc.tipSliderLabel?.isHidden = true
//            vc.tipSlader?.isHidden = true
//            sliderLabel = false
//            slider = false
//        }
    }
}
