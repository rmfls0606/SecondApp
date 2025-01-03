//
//  BasicTableViewController.swift
//  SecondApp
//
//  Created by 이상민 on 1/2/25.
//

import UIKit

class BasicTableViewController: UITableViewController {
    
    var list = ["프로젝트","쇼핑","메인업무", "새싹과제"]{
        didSet{
            tableView.reloadData()
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
    }
    
    @IBAction func randomTextTapped(_ sender: UIBarButtonItem) {
        let random = ["장보기", "영화보기", "쇼핑하기", "맛집탐방", "새싹공부", "산책하기"]
        let value = random.randomElement() ?? "휴식하기"
        self.list.append(value)
        
        //뷰와 데이터는 따로 놀아서, 늘 잘 맞춰주어야 한다.
        self.tableView.reloadData()
    }
}

extension BasicTableViewController{
    //1. 셀 갯수 : numberOfRowsInSection
    //테이블뷰가 몇 개의 셀로 구성되어 있는지 우리에게 알려주는 역할이 아니라, 몇 개의 셀을 생성해야 할지 iOS 시스템에게 알려주기 위해 작성
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    //2. 셀 디자인 및 데이터 처리 : cellForRowAt
    //씬에 표현해야 할 셀의 수만큼 반복적으로 호출 IndexPath를 통해 셀을 표현
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jackCell")!
        cell.textLabel?.text = list[indexPath.row]
//        cell.detailTextLabel?.text = "디테일 텍스트 레이블"
        cell.detailTextLabel?.setPrimaryLabel(text: "test")
        
        //3번 이하 인덱스에 대해서 회색 배경
        if indexPath.row <= 3{
            cell.backgroundColor = .gray
        }else{
            cell.backgroundColor = .white
        }
        
        cell.textLabel?.textColor = .blue
        cell.textLabel?.font = .systemFont(ofSize: 14)
        
        print(#function, indexPath)
        return cell
    }
    
    //3. 셀 높이 : heightForRowAt
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80.0
//    }
    
    //셀을 선택했을 때
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        self.tableView.reloadData()
    }

}
