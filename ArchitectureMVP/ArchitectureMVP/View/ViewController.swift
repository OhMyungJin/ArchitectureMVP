//
//  ViewController.swift
//  ArchitectureMVP
//
//  Created by Simmons on 7/20/24.
//

import UIKit

class ViewController: UIViewController, ViewInterface {
    
    var urlManager: URLManager = URLManager()
    var presenter: Presenter = Presenter()
    
    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setupView(self)
        
        label.numberOfLines = 0
    }
    
    @IBAction func getButton() {
        
        presenter.getNumbersapi()
    }
    
    func fetchText(text: String) {
        DispatchQueue.main.async {
            self.label.text = text
        }
        print("change")
    }
}

