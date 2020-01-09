//
//  CalanquesTableViewCell.swift
//  Les calanques
//
//  Created by Ddales on 09/01/2020.
//  Copyright © 2020 Ddales. All rights reserved.
//

import UIKit

class CalanquesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var imageCalanque: imageRound!
    @IBOutlet weak var containerCell: UIView!
    
    var calanque: Calanque!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupCell(_ calanque: Calanque) {
        self.calanque = calanque
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 20
        containerCell.layer.cornerRadius = 20
        containerCell.layer.shadowOffset = CGSize(width: 5, height: 5)
        containerCell.layer.shadowOpacity = 0.5
        imageCalanque.layer.shadowOpacity = 0.2
        imageCalanque.layer.shadowOffset = CGSize(width: 5, height: 5)
        nomLabel.text = self.calanque.nom
        imageCalanque.image = self.calanque.image
    }
}
