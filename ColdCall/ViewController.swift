//
//  ViewController.swift
//  ColdCall
//
//  Created by Ashwin Mahesh on 7/2/18.
//  Copyright © 2018 CodingDojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names=["John", "Max", "Wu", "Caleb", "Ashwin", "Trevor", "Suehel", "Dave", "Joe", "Andrew", "Rod"]
    @IBOutlet weak var spaceForName: UILabel!
    @IBAction func coldCallAction(_ sender: UIButton) {
        let randPos:Int=Int(arc4random_uniform(UInt32(names.count)))
        spaceForName.text=names[randPos]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

