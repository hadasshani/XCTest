//
//  ViewController.swift
//  SimpleAppForTesting
//
//  Created by Igor Gindin on 15/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var somethingTestField: UITextField!
    @IBOutlet weak var somethingLabel: UILabel!
    
    
    // MARK: Actions
    @IBAction func setNewLabelText(_ sender: UIButton) {
        somethingLabel.text = somethingTestField.text
    }
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        somethingLabel.text = "Something"
    }
    
    @IBAction func clearTestFieldText(_ sender: UIButton) {
        somethingTestField.text = ""
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

