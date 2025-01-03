//
//  NumberViewController.swift
//  SecondApp
//
//  Created by 이상민 on 12/30/24.
//

import UIKit

class NumberViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .lightGray
        setViewBackground()
        
//        var moster = Moster() //인스턴스 생성
        
        //UserDefault에 추가했을 시 확인하는 방법
        print(NSHomeDirectory())
        
        numberTextField.placeholder = "내용을 입력해주세요..."
        numberTextField.borderStyle = .roundedRect
        numberTextField.layer.borderWidth = 1.0
        numberTextField.layer.borderColor = UIColor.black.cgColor
        
        numberTextField.text = UserDefaults.standard.string(forKey: "number")
        
        dateLabel.text = getToday()
    }
    
    //Swift5.1: Implicit returns
    func randomInt() -> Int{
        Int.random(in: 1...100)
    }
    
    //매개변수, 반환값이 없는 함수
    func today() -> Void{
        
    }
    
    //@discardableResult return을 했지만 다른곳에서 return값을 안 사용할 수 있을 때 경고 표시를 안나오게해라
    //Swift Attributes
    @discardableResult
    func getToday() -> String{
        let format = DateFormatter()
        format.dateFormat = "yy년 MM월 dd일"
        let today = format.string(from: Date())
        
//        dateLabel.text = today
        
        return today
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        //텍스트필드에 적었던 내용을 영구적으로 저장.
        UserDefaults.standard.set(numberTextField.text, forKey: "number")
        //사용자에게 성공적으로 저장이 되었다는 알림을 추가
        //Alert
        //1. 타이틀 + 메시지
        let alert = UIAlertController(title: nil,
                                      message: nil,
                                      preferredStyle: .actionSheet)
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .cancel)
        let test1 = UIAlertAction(title: "test1", style: .default)
        let test2 = UIAlertAction(title: "test2", style: .default)
        let test3 = UIAlertAction(title: "test3", style: .default)
        //3. 본문에 버튼 추가
        alert.addAction(test1)
        alert.addAction(ok)
        alert.addAction(test2)
        alert.addAction(test3)
        //4. 화면에 띄우기
        present(alert, animated: true)
    }
    
    @IBAction func textFieldTextChnaged(_ sender: UITextField) {
        //실시간으로 레이블에 내용 반영
        let inputText = sender.text
        //입력한 내용이 숫자라면 숫자 그대로 출력
        //입력한 내용이 문자라면 숫자가 아닙니다 출력
        guard let inputText, let result = Int(inputText) else{
            resultLabel.text = "숫자가 아닙니다."
            return
        }
        
        resultLabel.text = "\(result)"
    }
}
