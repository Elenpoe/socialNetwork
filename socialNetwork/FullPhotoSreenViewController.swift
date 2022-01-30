//
//  FullPhotoSreenViewController.swift
//  socialNetwork
//
//  Created by Helen Poe on 30.01.2022.
//

import UIKit

class FullPhotoSreenViewController: UIViewController {
    
    var photoGallery:PhotoGallery!
    let countCells:CGFloat = 1
    let identifire = "FullScreenCell"
    var indexPath:IndexPath!
    
    @IBOutlet weak var fullPhotoOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullPhotoOutlet.dataSource = self
        fullPhotoOutlet.delegate = self
        
        fullPhotoOutlet.register(UINib(nibName: "FullPhotoScreenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifire)
    }
    
}

extension FullPhotoSreenViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! FullPhotoScreenCollectionViewCell
        cell.photoOutlet.image = photoGallery.images[indexPath.item]
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame
        let widthCell = frameCV.width / countCells
        let heightCell = widthCell
        
        return CGSize(width: widthCell, height: heightCell)
    }
}
