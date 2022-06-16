//
//  StoryPageViewController.swift
//  ninart_app
//
//  Created by Luciana Adrião on 16/06/22.
//

import UIKit

class StoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: background fullscreen
        let gradient = GradientView()
        gradient.frame = view.bounds
        
        //MARK: storyPage
        let storyPage = StoryPage(frame: view.bounds)
        storyPage.frame = view.bounds
        
        //MARK: AddSubviews
        view.addSubview(gradient)
        view.addSubview(storyPage)
    }
}

