//
//  ViewController.swift
//  SirKR
//
//  Created by BolloMini on 13.6.2016.
//  Copyright © 2016 Bollagardar Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var assia: UILabel!
    
    var assiaIsSelected : Bool = true
    
    var rassia : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rassia = "Assia"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitAction(sender: UIButton) {
        if assiaIsSelected {
            rassia = "Rassia"
        
        } else {
            rassia = "Assia"
        }
        
        assia.text = rassia
        assiaIsSelected = !assiaIsSelected
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "bassia" {
            let destination = segue.destinationViewController as! SecondViewController
            destination.rassia = rassia
        }
    }

}

