//
//  Presenter.swift
//  ArchitectureMVP
//
//  Created by Simmons on 7/20/24.
//

import UIKit

class Presenter {
    
    // Presenter은 View는 모르지만 ViewInterface를 알고있고, Model을 알고 있는 상태
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
