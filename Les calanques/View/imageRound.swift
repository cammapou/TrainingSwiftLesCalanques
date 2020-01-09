//
//  imageRound.swift
//  Les calanques
//
//  Created by Ddales on 09/01/2020.
//  Copyright © 2020 Ddales. All rights reserved.
//

import UIKit

class imageRound: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        
        layer.cornerRadius = frame.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        clipsToBounds = true
        contentMode = .scaleAspectFill
    }
}
