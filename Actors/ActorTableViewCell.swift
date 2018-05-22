//
//  ActorTableViewCell.swift
//  Actors
//
//  Created by Elite- 77 on 26/03/18.
//  Copyright © 2018 Elite- 77. All rights reserved.
//

import UIKit

class ActorTableViewCell: UITableViewCell {

    @IBOutlet weak var actorImageView: UIImageView!
    
    @IBOutlet weak var lblActorName: UILabel!
    @IBOutlet weak var lblActorDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
