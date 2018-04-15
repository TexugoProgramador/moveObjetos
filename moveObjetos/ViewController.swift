//
//  ViewController.swift
//  moveObjetos
//
//  Created by Humberto Puccinelli on 15/04/2018.
//  Copyright © 2018 Humberto Puccinelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caixa: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        caixa.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: sender.view)
            let mudaX = (sender.view?.center.x)! + translation.x
            let muday = (sender.view?.center.y)! + translation.y
        
            caixa.center = CGPoint(x: mudaX, y: muday)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    
}

