//
//  PokemonDetailViewController.swift
//  PokemonDetail
//
//  Created by
//  Azul Alfaro Fernández
//  Ricardo Rigel Sánchez Riquelme
//  Luz Itzel Valdeolivar Hernández
//  on 28/08/24.

import UIKit

class PokemonDetailViewController: UIViewController {
    var receivedPokemon : Pokemon?
    
    @IBOutlet weak var TypePokemonDetail: UILabel!
    @IBOutlet weak var MovPokemonDetail: UILabel!
    @IBOutlet weak var NamePokemonDetail: UILabel!
    @IBOutlet weak var ImagenPokemonDetail: UIImageView!
    @IBAction func cerrarViewController(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NamePokemonDetail.text = receivedPokemon?.name
        MovPokemonDetail.text = receivedPokemon?.mov
        TypePokemonDetail.text = receivedPokemon?.type
        ImagenPokemonDetail.image = UIImage(named: receivedPokemon!.image)
        
        // Do any additional setup after loading the view.
    }
    
    
    //cell.pokemonImage.image = UIImage(named: receivedPokemon.image)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
