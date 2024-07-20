//
//  ViewController.swift
//  ArchitectureMVP
//
//  Created by Simmons on 7/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getButton() {
        print("hi")
    }
}

