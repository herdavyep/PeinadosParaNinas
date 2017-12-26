//
//  Peinado.swift
//  PeinadosParaNiñas
//
//  Created by Heriberto David Yepes on 23/12/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class Peinado: NSObject {

    var nombre : String
    var image : UIImage?
    var color : UIColor
    var url : String?
    
   
    //constructor por defecto
    override init() {
        
        nombre = "desconocido";
        color = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        url = ""
    }
    
    //constructor personalizado
    init (nombre:String,color:UIColor,url:String?,image:UIImage?){
        
        
        self.nombre = nombre
        self.color = color
        self.url = url
        
        if let image = image{
            
            self.image = image
        }
    }
    
    
    
    
}

