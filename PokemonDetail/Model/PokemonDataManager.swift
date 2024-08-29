//
//  PokemonDataManager.swift
//  PokemonDetail
//
//  Created by
//  Azul Alfaro Fernández
//  Ricardo Rigel Sánchez Riquelme
//  Luz Itzel Valdeolivar Hernández
//  on 28/08/24.

import Foundation


class PokemonDataManager {
    
    //MARK: Properties
    private var pokemons : [Pokemon] = []
    
    //MARK: data source array :P
    let pokemonsArray = [
            ["image":"0", "name": "Grotle", "mov": "Placaje", "type": "Planta"],
            ["image":"1", "name": "Monferno", "mov": "Ultrapuño", "type": "Fuego"],
            ["image":"2", "name": "Prinplup", "mov": "Garra metal", "type": "Agua"],
            ["image":"3", "name": "Staravia", "mov": "Placaje", "type": "Normal"],
            ["image":"4", "name": "Bibarel", "mov": "Hidropulso", "type": "Normal"],
            ["image":"5", "name": "Luxio", "mov": "Placaje", "type": "Eléctrico"],
            ["image":"6", "name": "Roserade", "mov": "Picotazo veneno", "type": "Planta"],
            ["image":"7", "name": "Bastiodon", "mov": "Vasta guardia", "type": "Roca"],
            ["image":"8", "name": "Vespiquen", "mov": "Cuchillada", "type": "Bicho"],
            ["image":"9", "name": "Pachirisu", "mov": "Gruñido", "type": "Eléctrico"]
            ]
    
    //MARK: Methods
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        pokemons.count
    }
}
