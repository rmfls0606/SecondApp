//
//  PracticeViewController.swift
//  SecondApp
//
//  Created by 이상민 on 12/31/24.
//

import UIKit

class PracticeViewController: UIViewController {

    
    let colorList: [UIColor] = [.red, .yellow, .green, .orange, .purple, .cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self, #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self, #function)
    }
    
    //한번 찾아보자 어떤 불편함 때문에 만들어 졌는지?
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = colorList.randomElement()!
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
    
    //fullScreen Modal 닫게 하는 코드
    //스토리보드에서 연결하는게 아니라, 코드로 직접 타이핑
    @IBAction func unnwindToPracticeViewController(_ sender: UIStoryboardSegue){
        print(#function)
    }
    
    //intrinctContentsize 공부해보기
}
