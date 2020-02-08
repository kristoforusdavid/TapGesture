//
//  ViewController.swift
//  TapGesture
//
//  Created by Kristoforus David on 07/01/20.
//  Copyright © 2020 Kristoforus David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rectangleView: UIView!
    @IBOutlet weak var panView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        rectangleView.backgroundColor = #colorLiteral(red: 0.5585989356, green: 0.8811853528, blue: 1, alpha: 1)
    }
    
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        guard let recognizerView = sender.view else{
            return
        }
        
        let translation = sender.translation(in: view)
        recognizerView.center.x += translation.x
        recognizerView.center.y += translation.y
        sender.setTranslation(.zero, in: view)
    }
    
}

