//
//  PokemonCell.swift
//  PokemonDetail
//
//  Created by 
//  Azul Alfaro Fernández
//  Ricardo Rigel Sánchez Riquelme
//  Luz Itzel Valdeolivar Hernández
//  on 28/08/24.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
