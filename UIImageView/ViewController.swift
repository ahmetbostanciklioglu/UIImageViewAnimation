//
//  ViewController.swift
//  UIImageView
//
//  Created by Ahmet Bostancıklıoğlu on 31.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    
}

@IBDesignable
class MyImageViewClass: UIImageView {
    //MARK: Properties
    @IBInspectable
    var myImage: UIImage! {
        didSet {
            mask = UIImageView(image: myImage)

        }
    }
}

