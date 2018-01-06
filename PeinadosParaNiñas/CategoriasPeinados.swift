//
//  CategoriasPeinados.swift
//  Peinados Para Niñas
//
//  Created by Heriberto David Yepes on 4/01/18.
//  Copyright © 2018 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CategoriasPeinados: NSObject {
    
    var nombre : String
    var image : UIImage
    var IdCategoria : Int
    
    override init() {
        nombre = ""
        IdCategoria = 0
        image = #imageLiteral(resourceName: "pn2")
        
    }
    
    init(nombre:String,image:UIImage,categoria:Int) {
        self.nombre = nombre
        self.IdCategoria = categoria
        self.image = image
        
    }

}
