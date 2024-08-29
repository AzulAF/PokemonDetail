//
//  PokemonNewViewController.swift
//  PokemonDetail
//
//  Created by
//  Azul Alfaro Fernández
//  Ricardo Rigel Sánchez Riquelme
//  Luz Itzel Valdeolivar Hernández
//  on 28/08/24.

import UIKit

class PokemonNewViewController: UIViewController {
    
    @IBOutlet weak var pokemonTableView: UITableView!
    //var
    
    let dataManager = PokemonDataManager()
    var selectedPokemon : Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()
        dataManager.fetch()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
        print("Llego: ", destination.receivedPokemon?.name)
    }
}

//Se crea una extensión para "arreglar" el codigo
extension PokemonNewViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Nos permite seleccionar el numero de rows en una seccion
        return dataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //El metodo toma uno de los renglones para mostrar la información de una celda
        //down (?) cast para que se comporte como un pokemon cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        //Traemos
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        cell.pokemonName.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        
        //Para cambiar color de seleccion
        let selectedRowBackground = UIView()
        selectedRowBackground.backgroundColor = UIColor.lightGray
        cell.selectedBackgroundView = selectedRowBackground
        
        //Regresa una celda del tableview
        return cell
    }
    

    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

            //create container view
            let containerView = UIView()
                              
            //Create image view
            let imgHeader = UIImageView.init(image: UIImage(named: "PokemonBanner"))
            imgHeader.translatesAutoresizingMaskIntoConstraints = false
            
            // Create view for blur effect
            let bgView = UIVisualEffectView()
            bgView.translatesAutoresizingMaskIntoConstraints = false
            bgView.backgroundColor = UIColor.yellow.withAlphaComponent(CGFloat(0.2))
            
            // Create blur effect
            let blurEffect = UIBlurEffect(style: .light)
            bgView.effect = blurEffect
            
            containerView.addSubview(bgView)
            containerView.addSubview(imgHeader)
//Set constraints
            containerView.heightAnchor.constraint(equalToConstant: imgHeader.frame.height).isActive = true
            imgHeader.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
            
            NSLayoutConstraint.activate(
                [
                    bgView.topAnchor.constraint(equalTo: containerView.topAnchor)
                   , bgView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
                    ,bgView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
                   , bgView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
                ]
            )
            
            return containerView
            
    //          return UIImageView.init(image: UIImage(named: "Pokemon"))
        
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row:", indexPath.row)
        selectedPokemon = dataManager.getPokemon(at: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: self)
        
    }
    
}

