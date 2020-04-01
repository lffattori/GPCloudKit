//
//  TableViewCell.swift
//  CloudKitTeste
//
//  Created by Luiza Fattori on 01/04/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var curso: UILabel!
    @IBOutlet weak var TIA: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
