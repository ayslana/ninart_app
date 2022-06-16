//
//  StoryPage.swift
//  ninart_app
//
//  Created by Luciana Adrião on 16/06/22.
//

import UIKit

class StoryPage: UIScrollView {
    
    //MARK: Variables
    let storyPageScroll: UIScrollView = {
    
        let storyPageScroll = UIScrollView()
        
        storyPageScroll.backgroundColor = UIColor.Primary
        
        return storyPageScroll
    }()
    
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        
        pageControl.numberOfPages = 4
        pageControl.backgroundStyle = .minimal
        pageControl.backgroundColor = .clear
        pageControl.translatesAutoresizingMaskIntoConstraints = true
        
        return pageControl
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "octopus")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let pageText: UILabel = {
        let pageText = UILabel()
        
        pageText.backgroundColor = .red
        pageText.font.withSize(10)
        pageText.text = "✨ textinho ✨"
        pageText.textColor = UIColor.AccentText
        
        return pageText
    }()
    
    let greenView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        greenView.backgroundColor = .green
        
        //MARK: Frame
        storyPageScroll.frame = CGRect(
            x: 0,
            y: 0,
            width: frame.size.width - 40,
            height:frame.size.height/3)
        pageControl.frame = CGRect(
            x: 0,
            y: frame.size.height-100,
            width: 0,
            height: 100)
        imageView.frame = storyPageScroll.frame
        greenView.frame = .zero
        pageText.frame = CGRect(x: 0, y: 0, width: greenView.frame.size.width, height: frame.size.height / 4)

        //MARK: Centered
        storyPageScroll.center = CGPoint(
            x: frame.midX,
            y: frame.size.height/4)
        imageView.center = storyPageScroll.center
        pageText.center = CGPoint(
            x: frame.midX,
            y: (frame.size.height/4)*2)
        
        addSubview(storyPageScroll)
        addSubview(pageControl)
//        addSubview(greenView)
        addSubview(imageView)
//        addSubview(pageText)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
}
