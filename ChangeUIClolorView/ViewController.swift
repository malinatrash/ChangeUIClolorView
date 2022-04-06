//
//  ViewController.swift
//  ChangeUIClolorView
//
//  Created by Pavel Naumov on 06.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redSliderValueLabel: UILabel!
    @IBOutlet weak var greenSliderValueLabel: UILabel!
    @IBOutlet weak var blueSliderValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 25
        mainView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        redSliderValueLabel.text = String(redSlider.value)
        greenSliderValueLabel.text = String(greenSlider.value)
        blueSliderValueLabel.text = String(blueSlider.value)
        
        
    }
    
    @IBAction func changeRedSliderValue() {
        redSliderValueLabel.text = String(round(100 * redSlider.value) / 100)
        mainView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func changeGreenSliderValue() {
        greenSliderValueLabel.text = String(round(100 * greenSlider.value) / 100)
        mainView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func changeBlueSliderValue() {
        blueSliderValueLabel.text = String(round(100 * blueSlider.value) / 100)
        mainView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

