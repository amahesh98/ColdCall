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
    @IBOutlet weak var numberArea: UILabel!
    @IBAction func coldCallAction(_ sender: UIButton) {
        let randPos:Int=Int(arc4random_uniform(UInt32(names.count)))
        spaceForName.text=names[randPos]
        let randNum:Int = Int(arc4random_uniform(5)+1)
        numberArea.text=String(randNum)
        if numberArea.isHidden{
            numberArea.isHidden=false
        }
        if randNum==1 || randNum==2{
            numberArea.textColor=UIColor.red
        }
        else if randNum==3 || randNum==4{
            numberArea.textColor=UIColor.orange
        }
        else{
            numberArea.textColor=UIColor.green
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        numberArea.isHidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

