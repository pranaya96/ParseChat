//
//  ChatCell.swift
//  Parse Chat
//
//  Created by Pranaya Adhikari on 2/25/18.
//  Copyright © 2018 Pranaya Adhikari. All rights reserved.
//

import UIKit
import Parse

class ChatCell: UITableViewCell {

    @IBOutlet weak var textMessageLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    var messages: PFObject! {
        didSet{
            textMessageLabel.text = messages.object(forKey: "text") as? String
            let user = messages.object(forKey:"user") as? PFUser
            let userName = user?.username
            self.userNameLabel.text = userName
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
