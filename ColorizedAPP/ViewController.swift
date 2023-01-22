//
//  ViewController.swift
//  ColorizedAPP
//
//  Created by Konstantin Durkin on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ColorWiev: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
//MARK: - LifeCicle View
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorWiev.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        ColorWiev.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value )
        greenLabel.text = String(format: "%.2f", greenSlider.value )
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        }
//MARK: - IBaction
    @IBAction func RGBSlider(_ sender: UISlider) {        ColorWiev.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1
            )
            
            redLabel.text = String(format: "%.2f", redSlider.value)
            greenLabel.text = String(format: "%.2f", greenSlider.value)
            blueLabel.text = String(format: "%.2f", blueSlider.value)
     
        
    }
    

}

