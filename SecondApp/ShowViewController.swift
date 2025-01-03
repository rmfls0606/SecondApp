//
//  ShowViewController.swift
//  SecondApp
//
//  Created by 이상민 on 12/31/24.
//

import UIKit

class ShowViewController: UIViewController {

    let colorList: [UIColor] = [.red, .yellow, .green, .orange, .purple, .cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = colorList.randomElement()!
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(self, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(self, #function)
    }
}
