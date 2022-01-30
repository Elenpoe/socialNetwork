//
//  PhotoGallery.swift
//  socialNetwork
//
//  Created by Helen Poe on 29.01.2022.
//

import Foundation
import UIKit

class PhotoGallery{
    var images = [UIImage]()
    
    init() {
        setUpGallery()
    }
    func setUpGallery() {
        for p in 1...6{
            let image = UIImage(named: "photo\(p)")!
            images.append(image)
        }
    }
}
