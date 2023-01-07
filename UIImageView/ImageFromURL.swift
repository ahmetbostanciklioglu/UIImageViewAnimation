//
//  ImageFromURL.swift
//  UIImageView
//
//  Created by Ahmet Bostancıklıoğlu on 31.12.2022.
//

import UIKit

class ImageFromURL: UIViewController {
    
    //MARK: create instance property or UIImageView object
    var ImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: set url string
        let URLOfImageView = URL(string: "write_an_image_URL_to_here")!
        
        //MARK: set frame to ImageView object
        ImageView.frame = CGRect(x: 95, y: 159, width: 200, height: 200)
        
        //MARK: calling extension imageURL() function object by ImageView property
        ImageView.imageURL(URLOfImageView)
        
        //MARK: Add ImageView to view (UIView)
        view.addSubview(ImageView)
    }
}

//MARK: Parse URL image data to self.image (UIImageView.image), self means UIImageView
extension UIImageView {
    func imageURL(_ imageURL: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: imageURL),  let imageData = UIImage(data: data) {
                DispatchQueue.main.async {
                    self?.image = imageData
                }
            }
        }
    }
}
