//
//  Pokemon.swift
//  PokemonDetail
//
//  Created by
//  Azul Alfaro Fernández
//  Ricardo Rigel Sánchez Riquelme
//  Luz Itzel Valdeolivar Hernández
//  on 28/08/24.

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let mov : String
    let type : String
    
    //parametro dict de diccionario para nuestra estructura
    init(dict: [String : String]){
        self.image = dict["image"]!
        self.name = dict["name"]!
        self.mov = dict["mov"]!
        self.type = dict["type"]!
    }
}
