//
//  iProgressBar.swift
//  iProgressBar
//
//  Created by Ali Pishvaee on 5/8/20.
//

import UIKit

@IBDesignable class iProgressBar: UIControl {
    var progressContainer = UIView()
    var progressIndicator = UIView()
    
    @IBInspectable var progressValue: CGFloat = 5.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var CornerRadius : CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = CornerRadius
        }
    }
    
    @IBInspectable var BarBackColor :  UIColor = UIColor.lightGray {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var BarIndicatorColor :  UIColor = UIColor.orange {
        didSet {
            updateView()
        }
    }
    
    
    func updateView() {
        progressContainer.backgroundColor = BarBackColor
        progressIndicator.backgroundColor = BarIndicatorColor
        progressIndicator.layer.cornerRadius = CornerRadius
        progressIndicator.clipsToBounds = true
        [progressContainer, progressIndicator].forEach{( addSubview($0) )}
        bringSubviewToFront(progressIndicator)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let minValue: CGFloat = 0.0
        let maxValue: CGFloat = 10.0
        let newProgressValue = min(max(progressValue, minValue), maxValue)
        let progressWidth = frame.width * (newProgressValue/10)
        progressContainer.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        progressIndicator.anchor(top: progressContainer.topAnchor, leading: progressContainer.leadingAnchor, bottom: progressContainer.bottomAnchor, trailing: nil, padding: .zero, size: CGSize(width: progressWidth, height: 0))
    }
    
}
