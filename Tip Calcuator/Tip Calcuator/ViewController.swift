//
//  ViewController.swift
//  Tip Calcuator
//
//  Created by Gia on 7/1/16.
//  Copyright © 2016 Gia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var costField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBackgroundColor(sender: AnyObject) {
        
        var colors = [
            UIColor.blueColor(),
            UIColor.redColor(),
            UIColor.greenColor()
        ]
        
        var number = Int(arc4random_uniform(3))
        
        self.view.backgroundColor = colors[number]
        
    }
    
    @IBAction func getTip(sender: AnyObject) {
        var cost = Float(costField.text!)
        var tip = cost! * 0.15
        tipLabel.text = "\(tip)"
        
    }

}

