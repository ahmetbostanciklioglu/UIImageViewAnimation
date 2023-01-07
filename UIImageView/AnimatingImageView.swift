//
//  AnimatingImageView.swift
//  UIImageView
//
//  Created by Ahmet Bostancıklıoğlu on 1.01.2023.
//

import UIKit

class AnimatingImageView: UIViewController {

    //MARK: Properties
    @IBOutlet weak var animationImageView: UIImageView!
    
    var imageNames = ["0", "1", "2", "3", "4"]
    var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       animation(imageView: animationImageView)
    }
    
    //MARK: animation function
    func animation(imageView image: UIImageView) {
        image.layer.cornerRadius = 8
        for i in 0..<imageNames.count {
            images.append(UIImage(named: imageNames[i])!)
        }
        
        image.animationImages = images
        image.animationDuration = 10.0
        image.startAnimating()
    }

}
