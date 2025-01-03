//
//  ViewController.swift
//  SecondApp
//
//  Created by 이상민 on 12/30/24.
//

import UIKit
 import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var recommandButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(resultLabel.isUserInteractionEnabled)
        resultLabel.isUserInteractionEnabled = true
        
        posterImageView.image = UIImage(named: "a")
        if let url = URL(string: "https://biz.chosun.com/resizer/v2/SJVUZLGAEBDNUNQQNMYYHOH6II.jpg?auth=2b374743caae0627acf5d7e7301ce3283cf7ee59d27715a545a17dc61e2bfe90&width=530&height=625&smart=true"){
            posterImageView.kf.setImage(with: url)
        }else{
            posterImageView.image = UIImage(systemName: "star")
        }
    }
    
    @IBAction func textFieldReturnKeyTapped(_ sender: UITextField) {
        let text = wordTextField.text!.uppercased()
        
        //공백 whitespace
        resultLabel.text = "\(text) 입력되어야 함"
    }
    
    @IBAction func labelTappGesture(_ sender: UITapGestureRecognizer) {
        print(#function)
    }
    
    func aboutOptional(){
        var nickname: String? = "고래밥"
        let age: Int? = 22
        
        nickname = nil
        
        //1. 조건문을 통해 옵셔널 언래핑
        if nickname == nil{
            print("닉네임에 문제가 있어요")
        }else{
            print("\(nickname!)으로 설정합니다.")
        }
        
        //2. 옵셔널 바인딩: if let / guard let else
        //Swift5.7 : if let shotanding
        if let nickname{
            print("\(nickname)으로 설정합니다")
        }else{
            print("닉네임에 문제가 있어요")
        }
        
        if let age{
            print(age)
        }else{
            print("나이가 nil입니다.")
        }
        
        guard let age else{
            print("옵셔널 해제를 실패했어요 age가 nil임")
            return
        }
        
        print(age)
        
        //3. ??
        print(nickname ?? "손님")
        
        //옵셔널 체이닝
//        print(wordTextField.text?.count)
        
        if let text = wordTextField.text{
            print(text.count)
        }
    }
}

