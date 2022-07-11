//
//  SearchViewController.swift
//  Baemin
//
//  Created by 김태현 on 2022/07/11.
//

import UIKit

class SearchViewController: UIViewController {

    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var contentImgView: UIImageView!
    
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet var categoryBtns: [UIButton]!
    
    let categoryTitleList = ["윰차", "실매", "만만잘부", "꾸안꾸"]
    let searchResult = ["연애를 시작하기 전 썸 단계!", "이제는 서로가 편한 관계~", "연애 후 불타오르는 시기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designSearchBar()
        designCategoryBtns()
        designContent()
    }
    
    func designSearchBar() {
        searchView.layer.borderColor = UIColor.black.cgColor
        searchView.layer.borderWidth = 3
        searchButton.setTitle("", for: .normal)
        searchButton.tintColor = .white
        searchButton.backgroundColor = .black
        searchButton.layer.borderWidth = 3
        searchTextField.placeholder = "검색어를 입력해주세요."
        searchTextField.font = UIFont(name: "system", size: 17)
        searchTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: searchTextField.frame.height))
        searchTextField.leftViewMode = .always
    }
    
    func designCategoryBtns() {
        for i in 0...categoryBtns.count-1 {
            categoryBtns[i].layer.borderWidth = 1
            categoryBtns[i].layer.borderColor = UIColor.black.cgColor
            categoryBtns[i].setTitle(categoryTitleList[i], for: .normal)
            categoryBtns[i].tintColor = .black
            categoryBtns[i].layer.cornerRadius = 15
        }
    }
    
    func designContent() {
        contentImgView.image = UIImage(named: "background")
        contentImgView.contentMode = .scaleAspectFill
        contentLabel.isHidden = true
        contentLabel.contentMode = .center
        contentImgView.isHidden = true
    }
    
    @IBAction func clickedSearchIcon(_ sender: UIButton) {
        view.endEditing(true)
        
        contentLabel.isHidden = false
        contentImgView.isHidden = false
        
        contentLabel.text = searchResult[Int.random(in: 0...2)]

    }
    
    @IBAction func tappedView(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
   
    @IBAction func tappedEnterKey(_ sender: UITextField) {
        view.endEditing(true)
        
        contentLabel.isHidden = false
        contentImgView.isHidden = false
        
        contentLabel.text = searchResult[Int.random(in: 0...2)]
    }
    
    @IBAction func tappedBtns(_ sender: UIButton) {
        if sender.backgroundColor == nil {
            sender.backgroundColor = .black
            sender.tintColor = .white
        } else {
            sender.backgroundColor = nil
            sender.tintColor = .black
        }
        
    }
    
}
