//
//  EmojiArtView.swift
//  TableViewDragAndDrop
//
//  Created by Jian Luo on 2020/2/10.
//  Copyright © 2020 Jian Luo. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {

    
    
    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }

}
