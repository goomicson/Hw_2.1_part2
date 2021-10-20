//
//  ViewController.swift
//  Hw_2.1_part2
//
//  Created by Сергей on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    
    @IBOutlet var yellowSignalView: UIView!
    
    @IBOutlet var greenSignalView: UIView!
    
    @IBOutlet var colorSwitcherButton: UIButton!

    var selectorValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //start values for saturation of signals
        redSignalView.alpha = 0.3
        yellowSignalView.alpha = 0.3
        greenSignalView.alpha = 0.3
        
    }

    @IBAction func actionOfColorSwitcher(_ sender: Any) {
        selectorValue += 1
        colorSwitcherButton.setTitle("Next", for: .normal)
        
        switch selectorValue {
        case 2:
            redSignalView.alpha = 0.3
            yellowSignalView.alpha = 1
            greenSignalView.alpha = 0.3
            print (selectorValue)
        case 3:
            redSignalView.alpha = 0.3
            yellowSignalView.alpha = 0.3
            greenSignalView.alpha = 1
            print (selectorValue)
        default:
            redSignalView.alpha = 1
            yellowSignalView.alpha = 0.3
            greenSignalView.alpha = 0.3
            selectorValue = 1
            print (selectorValue)
        }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        redSignalView.layer.cornerRadius = redSignalView.frame.width / 2
        yellowSignalView.layer.cornerRadius = yellowSignalView.frame.width / 2
        greenSignalView.layer.cornerRadius = greenSignalView.frame.width / 2
        }
    
}

