//
//  CategoriasTableViewCell.swift
//  Peinados Para Niñas
//
//  Created by Heriberto David Yepes on 4/01/18.
//  Copyright © 2018 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CategoriasTableViewCell: UITableViewCell {
    
    
    @IBOutlet var ImagenCategoriaPeinado: UIImageView!
    
    @IBOutlet var NombreCategoriaPeinado: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
