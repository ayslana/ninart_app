//
//  ViewController.swift
//  ninart_app
//
//  Created by Ayslana Riene on 08/06/22.
//

import UIKit



class MenuViewController: UIViewController {
    
    let gradientView = GradientView()
    let menuCollection = CollectionViewController()
    
    
    override func viewDidLoad() {
         
        self.navigationItem.title = "Menu"
        addGradientConstraints()
        addCollectionConstraints()
    }
    
    //MARK: BackScreenConstraints
    private func addGradientConstraints() {
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(gradientView)
        
        NSLayoutConstraint.activate([
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gradientView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gradientView.topAnchor.constraint(equalTo: view.topAnchor),
            gradientView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }
    
    //MARK: CollectionConstraints
    private func addCollectionConstraints() {
        menuCollection.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(menuCollection.view)
        menuCollection.collectionView.backgroundColor = .clear
        
        NSLayoutConstraint.activate([
            menuCollection.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            menuCollection.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            menuCollection.view.topAnchor.constraint(equalTo: view.topAnchor),
            menuCollection.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }

}
