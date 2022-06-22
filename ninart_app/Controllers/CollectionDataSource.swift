//
//  CollectionDataSource.swift
//  ninart_app
//
//  Created by Ayslana Riene on 21/06/22.
//

import UIKit

class CollectionDataSource: NSObject, UICollectionViewDataSource {
    
    let images: [String] = ["swift", "flame", "brain"]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        let imageView: UIImageView = {
           let imageView = UIImageView()
            imageView.image = UIImage(systemName: images[indexPath.item])
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()
        cell.addSubview(imageView)
        imageView.frame = cell.bounds
        return cell
    }

}
