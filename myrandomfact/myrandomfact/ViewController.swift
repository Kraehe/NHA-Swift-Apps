//
//  ViewController.swift
//  myrandomfact
//
//  Created by Gia on 7/1/16.
//  Copyright © 2016 Gia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var facts = [
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Ostriches can run faster than horses.",
        "When hippos are upset, their sweat turns red.",
        "The television was invented only two years after the invention of sliced bread.",
        "Baked beans are actually not baked, but stewed.",
        "The most popular item at Walmart is bananas. They sell more bananas than any other single item they have in stock.",
        "The brain is our fattiest organ, being composed of nearly 60% fat.",
        "In the average lifetime, a person will walk the equivalent of 5 times around the equator.",
        "Elephants are the only mammals that can't jump."
    ]
    
    @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        let number = Int(arc4random_uniform(10))
        print(facts[number])
        factLabel.text = facts[number]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getRandomFact(sender: AnyObject) {
       let number = Int(arc4random_uniform(10))
       print(facts[number])
        factLabel.text = facts[number]
    }

}

