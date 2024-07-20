//
//  Presenter.swift
//  ArchitectureMVP
//
//  Created by Simmons on 7/20/24.
//

import UIKit

class Presenter {
    
    private var urlManager: URLManager = URLManager()
    private var view: ViewInterface?
    
    func setupView(_ interface: ViewInterface) {
        self.view = interface
    }
    
    func getNumbersapi() {
        self.urlManager.fetchNumbersapi { data in
    
            self.view?.fetchText(text: data.text)
            print(data.text)
        }
    }
}
