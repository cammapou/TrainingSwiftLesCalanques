//
//  DetailsViewController.swift
//  Les calanques
//
//  Created by Ddales on 09/01/2020.
//  Copyright © 2020 Ddales. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageCalanque: imageRound!
    @IBOutlet weak var descriptionCalanque: UITextView!
    
    var calanques: Calanque?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let calanque = self.calanques else {return}
        
        imageCalanque.image = calanque.image
        
        let mutable = NSMutableAttributedString(string: calanque.nom,
                                                attributes: [
                                                    .foregroundColor: UIColor.red,
                                                    .font: UIFont.boldSystemFont(ofSize: 20)])
        mutable.append(NSAttributedString(string: calanque.desc,
                                          attributes: [
                                            .foregroundColor: UIColor.darkGray,
                                            .font: UIFont.systemFont(ofSize: 17)]))
    }
   
}
