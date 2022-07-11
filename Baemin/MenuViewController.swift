//
//  MenuViewController.swift
//  Baemin
//
//  Created by User on 2022/07/09.
//

import UIKit

class MenuViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainBanner: UIImageView!
    
    @IBOutlet var foodImgs: [UIImageView]!
    @IBOutlet var foodLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designTitleLabel()
        designMainBanner()
        designFood()
    }
    
    func designTitleLabel() {
        titleLabel.text = "배달의 민족"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 25)
    }
    
    func designMainBanner() {
        mainBanner.image = UIImage(named: "churros")
        mainBanner.contentMode = .scaleAspectFill
    }
    
    func designFood() {
        let foodNameList = ["해물", "2인분", "배민오더", "한식", "떡볶이", "디저트", "초밥", "치킨", "족발", "피자", "아시안", "중국집", "야식", "탕", "도시락", "햄버거"]
        for i in 0...foodImgs.count-1 {
            if i < 9 {
                foodImgs[i].image = UIImage(named: "mono_baedal0\(i+1)")
            } else {
                foodImgs[i].image = UIImage(named: "mono_baedal\(i+1)")
            }
            foodLabels[i].text = foodNameList[i]
            foodLabels[i].textAlignment = .center
            foodLabels[i].font = UIFont.boldSystemFont(ofSize: 15)
        }
    }
    
    
}
