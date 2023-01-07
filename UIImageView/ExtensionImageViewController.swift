//
//  ExtensionImageViewController.swift
//  UIImageView
//
//  Created by Ahmet Bostancıklıoğlu on 31.12.2022.
//

import UIKit

class ExtensionImageViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var MyimageView: UIImageView!
    @IBOutlet weak var MyButton: UIButton!
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        MyimageView.layer.cornerRadius = 8
        MyButton.layer.cornerRadius = 8
        MyimageView.isOpaque = true
    }
    
    @IBAction func changeImageViewController(_ sender: Any) {
        if index == 0 {
            MyimageView.image = UIImage(named: "image")
            MyimageView.contentMode = .scaleAspectFill
            index = index + 1
        } else if index == 1 {
            MyimageView.image = UIImage(named: "image2")
            MyimageView.contentMode = .scaleAspectFill
            index = index - 1
        }
    }
}
