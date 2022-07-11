//
//  MainViewController.swift
//  Baemin
//
//  Created by User on 2022/07/06.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var previewMovie: UIImageView!
    @IBOutlet weak var previewMovie2: UIImageView!
    @IBOutlet weak var previewMovie3: UIImageView!
    
    @IBOutlet weak var mainMovieImage: UIImageView!
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        previewMovie.layer.cornerRadius = 30
        previewMovie2.layer.cornerRadius = 30
        previewMovie3.layer.cornerRadius = 30
        
        changeButton.titleLabel?.text = "바꾸기"
    }
    

    @IBAction func changeButtonClicked(_ sender: UIButton) {
        mainMovieImage.image = UIImage(named: "영화\(Int.random(in: 1...6))")
    }
    
}
