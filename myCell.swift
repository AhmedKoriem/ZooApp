//
//  myCell.swift
//  zooApp
//
//  Created by Ahmed Koriem on 6/14/18.
//  Copyright © 2018 Ahmed Koriem. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {
    // da lazmeto 3shan nt3aml m3a el cell kolaha 3la b3d
    

    @IBOutlet weak var laDes: UITextView!
    @IBOutlet weak var laName: UILabel!
    @IBOutlet weak var laImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
