//
//  ColorViewController.swift
//  ColorizedAPP
//
//  Created by Konstantin Durkin on 19.02.2023.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}


class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else {return}
        colorVC.delegate = self
        colorVC.viewColor = view.backgroundColor
        
        
    }
}


//MARK: - ColorDelegate
extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
