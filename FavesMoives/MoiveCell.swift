//
//  MoiveCell.swift
//  FavesMoives
//
//  Created by MiciH on 5/17/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class MoiveCell: UITableViewCell {

    
    @IBOutlet weak var imageMoiveCell: UIImageView!
    
    @IBOutlet weak var titleMoiveCell: UILabel!
    
    @IBOutlet weak var descMoiveCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func confgCell(moive: Moive){
        self.imageMoiveCell.image = moive.getMoiveImage()
        self.titleMoiveCell.text = moive.title
        self.descMoiveCell.text = moive.desc
    }
}
